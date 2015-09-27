package com.scau.beyondboy.dao;
import com.scau.beyondboy.model.UserEntity;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/27
 * Time: 23:48
 */
public interface UserDao
{
    //登录的方法
   List<UserEntity> login(String name,String pwd);
}
