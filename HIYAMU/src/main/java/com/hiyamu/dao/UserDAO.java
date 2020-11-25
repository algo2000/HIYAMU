package com.hiyamu.dao;

import com.hiyamu.vo.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserDAO
{
    void signUp(UserVO userVO) throws Exception;
    void signIn(UserVO userVO) throws Exception;
    String getSalt(String id);
}
