using System;
using System.Text;

using Org.BouncyCastle.Security;
using Org.BouncyCastle.Crypto.Parameters;
using System.Security.Cryptography;

namespace TW
{
    public class Validation
    {    
        private string GooglePublicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoZturutiTEx50BXEtYSa2DGBM91/ZyglRL7wQsLEhK84U7bhomYbdybWJnK2685g9S2xyWDRgd+u50CouBjuSoRISRF6jSWzzfeQtEtSeytFFWv5zk4Pdt8rIncpNofUwBVZ7xhHdJ+39LHcj9jtdBfHWMvkyV4GZD1HnDN3nj6JADpwblP9AVhJPZAvh/hugy5exwkTR0+WZ2hRtiNtbLT2DE6rmOtU3qBf+mCclgUO0UpeuHbpr0M3uuAUbdW3g99jp2RKlo2FZfuTJotABXz6Ahp0k9bswTiopWVeCpj8MsBMfDa4DhS809J5ZDdwKMvKqQ4/d5JcPutPl31vLQIDAQAB";
        private string GooglePublicKeyPremium = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuBioDWivMUhO6jq/3UsvuJn1FHy7SJ/wTx6nrY2veexWysatAwHsTMObIV1hGLWNLGeoni3Fyd+b0wYgC00yMKS7rI/Blprw/oHZ8/ICdPY1iFUrHCH1fs0mUeA5Bi6zSwirtOOLn0I1HfYck7QPcoqfW8I3Qcf34NQkwNDQ5fohMD84/xr00XgwgW24+xgeZHYdN2L58MOzKTWyUFbT+vP646nqb9bS4bwybEXw1ywB2o+Ewu0VyJNz8VLHRfReCoTWHLADlTwaJxU2aGb01c1MCNS+modWlzrISeJZRwWWrKOUNj01Y3kjvdjEHfcw832VdwUWJSpJQmI0mR0E3wIDAQAB";        
        RSAParameters _rsaKeyInfo;

        public Validation(string bundle)
        {
            string key = GooglePublicKey;
            //if (bundle == SystemDefine.BundleId + ".premium") key = GooglePublicKeyPremium;
            RsaKeyParameters rsaParameters = (RsaKeyParameters)PublicKeyFactory.CreateKey(Convert.FromBase64String(key));

            byte[] rsaExp = rsaParameters.Exponent.ToByteArray();
            byte[] Modulus = rsaParameters.Modulus.ToByteArray();

            // Microsoft RSAParameters modulo wants leading zero's removed so create new array with leading zero's removed
            int Pos = 0;
            for (int i = 0; i < Modulus.Length; i++)
            {
                if (Modulus[i] == 0)
                {
                    Pos++;
                }
                else
                {
                    break;
                }
            }
            byte[] rsaMod = new byte[Modulus.Length - Pos];
            Array.Copy(Modulus, Pos, rsaMod, 0, Modulus.Length - Pos);

            // Fill the Microsoft parameters
            _rsaKeyInfo = new RSAParameters()
            {
                Exponent = rsaExp,
                Modulus = rsaMod
            };
        }

        public bool Verify(String Message, String Signature)
        {
            using (RSACryptoServiceProvider rsa = new RSACryptoServiceProvider())
            {
                rsa.ImportParameters(_rsaKeyInfo);
                return rsa.VerifyData(Encoding.ASCII.GetBytes(Message), "SHA1", Convert.FromBase64String(Signature));
            }
        }
    }
}