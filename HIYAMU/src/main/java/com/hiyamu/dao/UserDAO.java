package com.hiyamu.dao;

import com.hiyamu.vo.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserDAO
{
    void signUp(UserVO userVO) throws Exception;
}
