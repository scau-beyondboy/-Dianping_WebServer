package com.scau.beyondboy.controller;
import com.scau.beyondboy.model.ResponseObject;
import com.scau.beyondboy.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/28
 * Time: 0:06
 */
@Controller
public class UserController
{
    @Autowired
    UserServices userServices;
    @RequestMapping(value = "/user",method = RequestMethod.GET)
    @ResponseBody
    public ResponseObject login(@RequestParam(value = "username")String username,@RequestParam(value = "password")String password,@RequestParam(value = "flag")String flag)
    {
        return userServices.login(username,password,flag);
    }
}
