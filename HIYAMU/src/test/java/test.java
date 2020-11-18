import org.junit.Test;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class test
{
    @Test
    public void test() throws NoSuchAlgorithmException
    {
        SecureRandom random = new SecureRandom();
        byte[] tempByte = new byte[16];
        random.nextBytes(tempByte);
        System.out.println(bytesToHexString(tempByte));

        Charset charset = Charset.forName("UTF-8");
        String plainText = "qwer1234@" + bytesToHexString(tempByte);
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(plainText.getBytes());
        byte[] hash = md.digest();
        System.out.println(bytesToHexString(hash));
    }

    public String bytesToHexString(byte[] temp)
    {
        StringBuilder sb = new StringBuilder();
        for(byte a : temp)
        {
            sb.append(String.format("%02x", a));
        }
        return sb.toString();
    }
}