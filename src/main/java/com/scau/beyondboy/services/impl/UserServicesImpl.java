package com.scau.beyondboy.services.impl;
import com.scau.beyondboy.dao.UserDao;
import com.scau.beyondboy.model.ResponseObject;
import com.scau.beyondboy.model.UserEntity;
import com.scau.beyondboy.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/28
 * Time: 0:05
 */
@Service
public class UserServicesImpl implements UserServices
{
    @Autowired
    UserDao userDao;
    @Override
    public ResponseObject login(String name, String pwd,String flag)
    {
        ResponseObject result = null;
        if(flag.equals("login"))
        {
            if(!StringUtils.isEmpty(name)&&!StringUtils.isEmpty(pwd))
            {
                List<UserEntity> userEntities=userDao.login(name,pwd);
                if(userEntities!=null&&userEntities.size()>0)
                {
                    result = new ResponseObject(1,"登录成功！",userEntities);
                }
                else
                {
                    result = new ResponseObject(0,"登录失败，用户名或密码不正确！");
                }
            }
        }
        else
        {
            result = new ResponseObject(0,"用户名和密码不能为空！");
        }
        return result;
    }
}
