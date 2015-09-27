package com.scau.beyondboy.dao.impl;
import com.scau.beyondboy.dao.UserDao;
import com.scau.beyondboy.model.UserEntity;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
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
    private SessionFactory sessionFactory;
    @Autowired
    public UserDaoImpl(SessionFactory sessionFactory)
    {
        this.sessionFactory = sessionFactory;
    }
    @Override
    @Transactional
    //登录的方法
    public List<UserEntity> login(String name,String pwd)
    {
        return (List<UserEntity>)sessionFactory.openSession().createQuery(RETURN_USER_HQL).setParameter(0,name).setParameter(1,pwd).list();
    }
}
