package com.scau.beyondboy.services.impl;
import com.scau.beyondboy.dao.ProductDao;
import com.scau.beyondboy.model.ProductEntity;
import com.scau.beyondboy.services.ProductServices;
import com.scau.beyondboy.util.CommonUtil;
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

    @Override
    public List<ProductEntity> getNearProductEntitybyLBS(int page, int size, double  lat, double lon, int raidus, String category)
    {
        double[] around= CommonUtil.getAround(lat, lon, raidus);
        return getProductEntitybyLBS(page,size,category,lat,lon,around[0], around[1], around[2], around[3]);
    }
    @Override
    public List<ProductEntity> getTest()
    {
        return productDao.getTest();
    }


}
