package com.hiyamu.controller;

import com.hiyamu.exception.IdNotExistException;
import com.hiyamu.service.UserService;
import com.hiyamu.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.sql.SQLIntegrityConstraintViolationException;

@Controller
public class UserController
{
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/sign-in", method = RequestMethod.GET)
    public String signInHome()
    {
        return "sign/signIn";
    }

    @RequestMapping(value = "/sign-in", method = RequestMethod.POST)
    public String signIn(UserVO userVO,HttpSession session) throws Exception
    {
        userService.signIn(userVO);

        session.setAttribute("id",userVO.getUser_id());
        return "home";
    }

    @RequestMapping(value = "/sign-up", method = RequestMethod.GET)
    public String signUpHome()
    {
        return "sign/signUp";
    }

    @RequestMapping(value = "/sign-up", method = RequestMethod.POST)
    public String signUp(UserVO userVO,HttpSession session) throws Exception
    {
        if(userVO.getUser_id() == "" || userVO.getPassword() == "" || userVO.getEmail() == "")
        {
            throw new NullPointerException();
        }
        userService.signUp(userVO);
        return "sign/signIn";
    }

    @ResponseBody
    @ExceptionHandler(SQLIntegrityConstraintViolationException.class)
    public String sqlLIntegrityConstraintViolationException(Exception e)
    {
        return "The ID already exists.";
    }

    @ResponseBody
    @ExceptionHandler(NullPointerException.class)
    public String nullPointerException(Exception e)
    {
        return "Please enter all information.";
    }

    @ResponseBody
    @ExceptionHandler(IdNotExistException.class)
    public String idNotExistException(Exception e)
    {
        return "ID does not exist.";
    }
}