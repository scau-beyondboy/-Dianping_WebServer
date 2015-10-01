package com.scau.beyondboy.services.impl;
import com.scau.beyondboy.dao.UserDao;
import com.scau.beyondboy.model.ResponseObject;
import com.scau.beyondboy.model.UserEntity;
import com.scau.beyondboy.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/28
 * Time: 0:05
 * 用户操作
 */
@Service
public class UserServicesImpl implements UserServices
{
    @Autowired
    UserDao userDao;
    @Override
    public ResponseObject user(String name, String pwd, String flag)
    {
        ResponseObject result = null;
        if(flag.equals("login"))
        {
            if(!StringUtils.isEmpty(name)&&!StringUtils.isEmpty(pwd))
            {
                UserEntity userEntity=userDao.login(name,pwd);
                if(userEntity!=null)
                {
                    result = new ResponseObject(1,"登录成功！",userEntity);
                }
                else
                {
                    result = new ResponseObject(0,"登录失败，用户名或密码不正确！");
                }
            }
            else
            {
                result = new ResponseObject(0,"用户名和密码不能为空！");
            }
        }
        else if("register".equals(flag))
        {
            if(!StringUtils.isEmpty(name)&&!StringUtils.isEmpty(pwd))
            {
                UserEntity userEntity=userDao.register(name,pwd);
                if(userEntity!=null)
                {
                    result = new ResponseObject(1,"注册成功！",userEntity);
                }
                else
                {
                    result = new ResponseObject(0,"用户已存在");
                }
            }
            else
            {
                result = new ResponseObject(0,"用户名和密码不能为空！");
            }
        }
        else if("social".equals(flag))
        {
            if(!StringUtils.isEmpty(name)&&!StringUtils.isEmpty(pwd))
            {
                UserEntity user =userDao.social(name, pwd);
                if(user != null)
                {
                    result = new ResponseObject(1,"授权登录成功！",user);
                }else
                {
                    result = new ResponseObject(0,"授权登录失败，请重试！");
                }
            }else
            {
                result = new ResponseObject(0,"用户名和密码不能为空！");
            }
        }
        return result;
    }
}
