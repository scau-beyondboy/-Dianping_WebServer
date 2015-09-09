package com.scau.beyondboy.services.impl;
import com.scau.beyondboy.dao.CityDao;
import com.scau.beyondboy.model.CityEntity;
import com.scau.beyondboy.services.CityServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/4
 * Time: 12:09
 */
@Service
public class CityServicesImpl implements CityServices
{
    @Qualifier("cityDao")
    @Autowired
    CityDao cityDao;
    @Override
    public List<CityEntity> getAllCity()
    {
       return cityDao.getAllCity();
    }
}
