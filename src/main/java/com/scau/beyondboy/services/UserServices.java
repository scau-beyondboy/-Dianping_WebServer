package com.scau.beyondboy.services;
import com.scau.beyondboy.model.ResponseObject;
import com.scau.beyondboy.model.UserEntity;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/28
 * Time: 0:04
 */
public interface UserServices
{
    //登录的方法
    ResponseObject login(String name,String pwd,String flag);
}
