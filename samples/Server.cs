using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Threading.Tasks;
using System.IO;

namespace Proxy
{
    public class Server
    {
        //public string Url = "http://www.host1575eu20x.a2hosted.com/handler.php";
        public string Url = "http://proxytest/handler.php";
        public int connectionName = 0;
        public int recipient = 0;
        public byte[] data;

        public enum Methods
        {
            login,
            mode1,
            mode2,
            push
        };

        public Server()
        {

        }

        public async Task Push(Methods method, byte[] sentData, Action<string, byte[]> OnComplete)
        {
            string str = "method=" + method + "&client=" + connectionName + "&recipient=" + recipient + "&data=@";
            byte[] datastr = System.Text.Encoding.ASCII.GetBytes(str);
            byte[] send = new byte[sentData.Length + datastr.Length];
            Array.ConstrainedCopy(datastr, 0, send, 0, datastr.Length);
            Array.ConstrainedCopy(sentData, 0, send, datastr.Length, sentData.Length);

            await PostRequestAsync(method, send, OnComplete);
        }

        public async Task Pull(Methods method, Action<string, byte[]> OnComplete)
        {
            string str = "method=" + method + "&client=" + connectionName;
            byte[] datastr = System.Text.Encoding.ASCII.GetBytes(str);

            await PostRequestAsync(method, datastr, OnComplete);
        }

        private async Task PostRequestAsync(Methods method, byte[] sentData, Action<string, byte[]> OnComplete)
        {
            WebRequest request = WebRequest.Create(Url);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = sentData.Length;

            string result="";
            using (Stream dataStream = request.GetRequestStream())
            {
                dataStream.Write(sentData, 0, sentData.Length);
            }

            var webResponseTask = request.GetResponseAsync();
            byte[] respbyte = new byte[1];

            await Task.WhenAll(webResponseTask);
            using (var response = webResponseTask.Result)
            {
                byte[] temp = new byte[response.ContentLength];
                using (Stream stream = response.GetResponseStream())
                {
                    int pos = 0;
                    while (pos < temp.Length)
                    {
                        int bytesRead = stream.Read(temp, pos, temp.Length - pos);
                        if (bytesRead == 0)
                        {
                            break;
                        }
                        pos += bytesRead;
                    }
                }

                if ((method == Methods.mode1 || method == Methods.mode2) && temp.Length > 1)
                {
                    int a = 0;
                    for (int i = 0; i < temp.Length; i++)
                    {
                        if (temp[i] == '@')
                        {
                            a = i;
                            break;
                        }
                    }
                    byte[] str = new byte[a];
                    Array.ConstrainedCopy(temp, 0, str, 0, a);
                    result = System.Text.Encoding.ASCII.GetString(str);
                    respbyte = new byte[response.ContentLength - a - 1];
                    Array.ConstrainedCopy(temp, 1 + a, respbyte, 0, respbyte.Length);
                }
                else result = System.Text.Encoding.ASCII.GetString(temp);
                response.Close();
                }
                OnComplete(result, respbyte);
        }


    }
}
