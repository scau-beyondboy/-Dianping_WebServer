package com.scau.beyondboy.dao.impl;
import com.scau.beyondboy.dao.CityDao;
import com.scau.beyondboy.model.CityEntity;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/4
 * Time: 12:09
 */
@Repository
public class CityDaoImpl implements CityDao
{
    public static final String SORtHQL = "from CityEntity cityentity order by cityentity.citySortkey";
    private SessionFactory sessionFactory;
    @Autowired
    public CityDaoImpl(SessionFactory sessionFactory)
    {
        this.sessionFactory=sessionFactory;
    }
    @Override
    @Transactional
    public List<CityEntity> getAllCity()
    {
        List<CityEntity> cityList=(List<CityEntity>)sessionFactory.getCurrentSession().createQuery(SORtHQL).list();
        return cityList;
    }
}
