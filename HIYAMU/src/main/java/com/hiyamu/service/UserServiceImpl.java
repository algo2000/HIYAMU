package com.hiyamu.service;

import com.hiyamu.dao.UserDAO;
import com.hiyamu.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

@Service
@Transactional
public class UserServiceImpl implements UserService
{
    @Autowired
    private UserDAO userDAO;

    @Override
    public void signUp(UserVO userVO) throws Exception
    {
        //password 암호화
        userVO.setSalt(getSalt());
        userVO.setPassword(passwordToHash(userVO.getPassword(),userVO.getSalt()));

        userDAO.signUp(userVO);
    }

    private String passwordToHash(String password, String salt) throws NoSuchAlgorithmException
    {
        String plainText = password + salt;
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(plainText.getBytes());
        byte[] hash = md.digest();
        return bytesToHexString(hash);
    }

    private String getSalt()
    {
        SecureRandom random = new SecureRandom();
        byte[] tempByte = new byte[16];
        random.nextBytes(tempByte);
        return bytesToHexString(tempByte);
    }

    private String bytesToHexString(byte[] temp)
    {
        StringBuilder sb = new StringBuilder();
        for(byte a : temp)
        {
            sb.append(String.format("%02x", a));
        }
        return sb.toString();
    }
}
