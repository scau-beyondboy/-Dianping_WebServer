package com.scau.beyondboy.dao;

import com.scau.beyondboy.model.CityEntity;
import org.springframework.stereotype.Repository;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/4
 * Time: 12:07
 */
public interface CityDao
{
    public List<CityEntity> getAllCity();
}
