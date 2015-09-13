package com.scau.beyondboy.services.impl;
import com.scau.beyondboy.dao.ProductDao;
import com.scau.beyondboy.model.ProductEntity;
import com.scau.beyondboy.services.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/10
 * Time: 22:01
 */
@Service
public class ProductServicesImpl implements ProductServices
{
    @Autowired
    ProductDao productDao;
    @Override
    public List<ProductEntity> getList(String cityId, String catId, int page, int size)
    {
        return productDao.getList(cityId,catId,page,size);
    }
    @Override
    public long getCount(String cityId, String categoryId)
    {
        return productDao.getCount(cityId,categoryId);
    }
    @Override
    public List<ProductEntity> getProductEntitybyLBS(int page, int size, String category, double lat, double lon, double minlat, double minlon, double maxlat, double maxlon)
    {
        return productDao.getProductEntitybyLBS(page,size,category,lat,lon,minlat,minlon,maxlat,maxlon);
    }
    @Override
    public int getCountByLBS(String category, double lat, double lon, double minlat, double minlon, double maxlat, double maxlon)
    {
        return productDao.getCountByLBS(category,lat,lon,minlat,minlon,maxlat,maxlon);
    }
}
