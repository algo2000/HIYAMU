package com.hiyamu.controller;

import com.hiyamu.service.UserService;
import com.hiyamu.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
    public String signIn()
    {
        return "home";
    }

    @RequestMapping(value = "/sign-up", method = RequestMethod.GET)
    public String signUpHome()
    {
        return "sign/signUp";
    }

    @RequestMapping(value = "/sign-up", method = RequestMethod.POST)
    public String signUp(UserVO userVO) throws Exception
    {
        userService.signUp(userVO);
        return "sign/signIn";
    }
}