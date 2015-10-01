package com.scau.beyondboy.dao.impl;
import com.scau.beyondboy.dao.UserDao;
import com.scau.beyondboy.model.UserEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/27
 * Time: 23:49
 */
@Repository
public class UserDaoImpl implements UserDao
{
    public static final String RETURN_USER_HQL = "from UserEntity user where user.userName=? and user.userLoginPwd=?";
    public static final String HQLFORCHECK = "from UserEntity user where user.userName=?";
    private SessionFactory sessionFactory;
    @Autowired
    public UserDaoImpl(SessionFactory sessionFactory)
    {
        this.sessionFactory = sessionFactory;
    }
    @Override
    @Transactional
    //登录的方法
    public UserEntity login(String name,String pwd)
    {
        return (UserEntity)sessionFactory.openSession().createQuery(RETURN_USER_HQL).setParameter(0,name).setParameter(1,pwd).uniqueResult();
    }
    @Override
    @Transactional
    //注册方法
    public UserEntity register(String name, String pwd)
    {
        Session session=sessionFactory.openSession();
        UserEntity userEntity=(UserEntity)session.createQuery(HQLFORCHECK).setParameter(0,name).uniqueResult();
        if(userEntity!=null)
        {
            return null;
        }
        else
        {
            UserEntity userEntity1=new UserEntity();
            userEntity1.setUserName(name);
            userEntity1.setUserLoginPwd(pwd);
            session.save(userEntity1);
            session.beginTransaction().commit();
            return userEntity1;
        }
    }
    @Override
    @Transactional
    //第三方登陆
    public UserEntity social(String name, String pwd)
    {
        Session session=sessionFactory.openSession();
        UserEntity userEntity=(UserEntity)session.createQuery(RETURN_USER_HQL).setParameter(0,name).setParameter(1,pwd).uniqueResult();;
        if(userEntity!=null)
            return userEntity;
        else
        {
            UserEntity userEntity1=new UserEntity();
            userEntity1.setUserName(name);
            userEntity1.setUserLoginPwd(pwd);
            session.save(userEntity1);
            session.beginTransaction().commit();
            return userEntity1;
        }
    }
}
