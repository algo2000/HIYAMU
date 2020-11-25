package com.hiyamu.service;

import com.hiyamu.vo.UserVO;

public interface UserService
{
    void signUp(UserVO userVO) throws Exception;
    void signIn(UserVO userVO) throws Exception;
}
