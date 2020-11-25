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
    int signIn(@Param("user_id") String user_id,@Param("password") String password) throws Exception;
    String getSalt(String user_id);
}
