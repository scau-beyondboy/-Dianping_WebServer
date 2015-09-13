package com.scau.beyondboy.services;
import com.scau.beyondboy.model.ProductEntity;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/10
 * Time: 21:59
 */
public interface ProductServices
{
    //根据城市id，分类id，当前的页码，每页中的容量获取商品集合信息
    public List<ProductEntity> getList(String cityId,String catId,int page,int size);

    public long getCount(String cityId,String categoryId);

    /**
     * @param lat 精度
     * @param lon 纬度
     * @return 范围内指定商家
     */
    List<ProductEntity> getProductEntitybyLBS(int page,int size,String category,double lat,double lon,double minlat,double minlon,double maxlat,double maxlon);
    int getCountByLBS(String category,double lat,double lon,double minlat,double minlon,double maxlat,double maxlon);
}
