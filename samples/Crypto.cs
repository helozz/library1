namespace DeepSpaces
{
using System;
using System.Collections.Generic;
using System.Text;
using System.Security.Cryptography;
using System.IO;
    
	public static class Crypto
    {
        static string ByteArrayToString(byte[] arrInput)
        {
            int i;
            StringBuilder sOutput = new StringBuilder(arrInput.Length);
            for (i = 0; i < arrInput.Length; i++)
            {
                sOutput.Append(arrInput[i].ToString("x2"));
            }
            return sOutput.ToString();
        }

        static byte[] HexStringToByteArray(string text)
        {
            byte[] bytes = new byte[text.Length / 2];
            for (int i = 0; i < text.Length; i += 2)
            {
                bytes[i / 2] = byte.Parse(text[i].ToString() + text[i + 1].ToString(),
                    System.Globalization.NumberStyles.HexNumber);
            }
            return bytes;
        }

        public static string md5file(string path)
		{
		FileStream fs = File.Open(path,FileMode.Open);
        fs.Position = 0;
		byte[] myhsh=MD5.Create().ComputeHash(fs);
		fs.Close();
		return Crypt.ByteArrayToString(myhsh);
		}

        public static string md5hash(string mystr)
        {
            byte[] src = ASCIIEncoding.UTF8.GetBytes(mystr);
            byte[] myhsh = new MD5CryptoServiceProvider().ComputeHash(src);
            return ByteArrayToString(myhsh);
        }


        public static string aesen(string mystr, string key)
        {
            byte[] src = ASCIIEncoding.UTF8.GetBytes(mystr);
            byte[] bkey = ASCIIEncoding.UTF8.GetBytes(key);
            RijndaelManaged rDel = new RijndaelManaged();
            rDel.Key = bkey;
            rDel.Mode = CipherMode.ECB;
            rDel.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = rDel.CreateEncryptor();
            byte[] rsl = cTransform.TransformFinalBlock(src, 0, src.Length);
            return ByteArrayToString(rsl);
        }

        public static string aesde(string mystr, string key)
        {            
                byte[] src = HexStringToByteArray(mystr);
                byte[] bkey = ASCIIEncoding.UTF8.GetBytes(key);
                RijndaelManaged rDel = new RijndaelManaged();
                rDel.Key = bkey;
                rDel.Mode = CipherMode.ECB;
                rDel.Padding = PaddingMode.PKCS7;
             try
            {   ICryptoTransform cTransform = rDel.CreateDecryptor();
                byte[] rsl = cTransform.TransformFinalBlock(src, 0, src.Length);
                return ASCIIEncoding.UTF8.GetString(rsl);
            }
            catch (Exception)
            {
                return "";
            }
            
        }

        public static string trden(string mystr, string key)
        {
            byte[] ToEn = ASCIIEncoding.UTF8.GetBytes(mystr);
            byte[] TDESKey = ASCIIEncoding.UTF8.GetBytes(key);
            TripleDESCryptoServiceProvider Tdes = new TripleDESCryptoServiceProvider();
            Tdes.Key = TDESKey;
            Tdes.Mode = CipherMode.ECB;
            Tdes.Padding = PaddingMode.PKCS7;
            ICryptoTransform Encryptor = Tdes.CreateEncryptor();
            byte[] Res = Encryptor.TransformFinalBlock(ToEn, 0, ToEn.Length);
            return ByteArrayToString(Res);
        }

        public static string trdde(string mystr, string key)
        {
            byte[] ToDe = HexStringToByteArray(mystr);
            byte[] TDESKey = ASCIIEncoding.UTF8.GetBytes(key);
            TripleDESCryptoServiceProvider Tdes = new TripleDESCryptoServiceProvider();
            Tdes.Key = TDESKey;
            Tdes.Mode = CipherMode.ECB;
            Tdes.Padding = PaddingMode.PKCS7;
            try
            {
                ICryptoTransform Decryptor = Tdes.CreateDecryptor();
                byte[] Res =  Decryptor.TransformFinalBlock(ToDe, 0, ToDe.Length);
                return ASCIIEncoding.UTF8.GetString(Res);
            }
            catch (Exception)
            {
                return "";
            }
        }

        public static string[] rsask()
        {
            RSACryptoServiceProvider Rsa = new RSACryptoServiceProvider();
            string[] keys = new string[2];
            keys[0]=Rsa.ToXmlString(true);
            keys[1]=Rsa.ToXmlString(false);
            return keys;
        }

        public static string rsaen(string mystr, string key)
        { 
            try
            {
            byte[] ToEn = ASCIIEncoding.UTF8.GetBytes(mystr);
            RSACryptoServiceProvider Rsa = new RSACryptoServiceProvider();
            Rsa.FromXmlString(key);
            
                byte[] Res = Rsa.Encrypt(ToEn, false);
                return ByteArrayToString(Res);
            }
            catch (Exception)
            {
                return "";
            }
        }

        public static string rsade(string mystr, string key)
        {
            try
            {
            byte[] ToDe = HexStringToByteArray(mystr);
            RSACryptoServiceProvider Rsa = new RSACryptoServiceProvider();
            Rsa.FromXmlString(key);
            
                byte[] Res = Rsa.Decrypt(ToDe,false);
                return ASCIIEncoding.UTF8.GetString(Res);
            }
            catch (Exception)
            {
                return "";
            }
        }

        public static string dsen(byte[] mystr, string key)
        {
            try
            {
            RSACryptoServiceProvider Rsa = new RSACryptoServiceProvider();
            Rsa.FromXmlString(key); 
            RSAPKCS1SignatureFormatter RSAF= new RSAPKCS1SignatureFormatter(Rsa);
            RSAF.SetHashAlgorithm("MD5");
            return ByteArrayToString(RSAF.CreateSignature(new MD5CryptoServiceProvider().ComputeHash(mystr)));
            }
            catch (Exception)
            {
				return "";
            }
            
        }

        public static bool dsde(byte[] mystr, string key, string ds)
        {
            try
            {
            RSACryptoServiceProvider Rsa = new RSACryptoServiceProvider();
            Rsa.FromXmlString(key);
            RSAPKCS1SignatureDeformatter RSAD = new RSAPKCS1SignatureDeformatter(Rsa);
            RSAD.SetHashAlgorithm("MD5");
            return RSAD.VerifySignature(new MD5CryptoServiceProvider().ComputeHash(mystr), HexStringToByteArray(ds));
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
