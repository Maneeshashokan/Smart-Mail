using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;
using System.IO;
/// <summary>
/// Summary description for coding
/// </summary>
public class coding
{
    static readonly string password="g%$#7GHAJZZz" ;
    static readonly string vikey = "d7r89juw30jv7yzz";
    static readonly string key = "88476109";
    public string encrypt(string plaintext)
    {
        byte[] plaintext_byte = Encoding.UTF8.GetBytes(plaintext);
        byte[] keybyte = new Rfc2898DeriveBytes(password, Encoding.ASCII.GetBytes(key)).GetBytes(256 / 8);
        var symmetric_key = new RijndaelManaged() { Mode = CipherMode.CBC, Padding = PaddingMode.Zeros };
        var encriptor = symmetric_key.CreateEncryptor(keybyte, Encoding.ASCII.GetBytes(vikey));
        byte[] cipherText_Bytes;
        using (var memorystream = new MemoryStream())
        {
            using (var CryptoStream = new CryptoStream(memorystream, encriptor, CryptoStreamMode.Write))
            {
                CryptoStream.Write(plaintext_byte, 0, plaintext_byte.Length);
                CryptoStream.FlushFinalBlock();
                cipherText_Bytes = memorystream.ToArray();
                CryptoStream.Close();
            }
            memorystream.Close();
        }
        return Convert.ToBase64String(cipherText_Bytes);
        
	}

    
}