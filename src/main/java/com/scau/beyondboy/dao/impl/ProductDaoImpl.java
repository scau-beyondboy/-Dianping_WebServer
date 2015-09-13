package com.scau.beyondboy.dao.impl;
import com.scau.beyondboy.dao.ProductDao;
import com.scau.beyondboy.model.ProductEntity;
import com.scau.beyondboy.model.ShopEntity;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import javax.transaction.Transactional;
import java.sql.Time;
import java.util.LinkedList;
import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/10
 * Time: 20:17
 */
@Repository
public class ProductDaoImpl implements ProductDao
{
    private  String GOODSHQL ="SELECT product.productId, product.categoryId,product.shopId,product.cityId,product.productTitle,"
        + "product.productSortTitle, product.productImage, product.productStartTime,product.productValue,product.productPrice,"
        + "product.productRibat, product.productBought, product.productMinquota, product.productMaxquota,product.productPost,"
        + " product.productSoldout,product.productTip, product.productEndTime,product.productDetail,shop.shopId,"
        + "shop.shopName, shop.shopTel,shop.shopAddress,shop.shopArea,shop.shopOpenTime, shop.shopLon, shop.shopLat,shop.shopTrafficInfo  from  ProductEntity as product,ShopEntity as shop where product.shopId=shop.shopId";
    private  String COUNTSQL = "select  count(*) from ProductEntity where 1=1";
    private SessionFactory sessionFactory;
    @Autowired
    public ProductDaoImpl(SessionFactory sessionFactory)
    {
        this.sessionFactory=sessionFactory;
    }
    @Override
    @Transactional
    public List<ProductEntity> getList(String cityId, String categoryId, int page, int size)
    {
        String hql = GOODSHQL + (StringUtils.isEmpty(cityId) ? "" :(" and product.cityId = " + cityId))
            + (StringUtils.isEmpty(categoryId)?  "": (" and product.categoryId = " + categoryId));//从哪条数据开始查询，查询多少条数据
        List goodList=sessionFactory.getCurrentSession().createQuery(hql).setFirstResult((page - 1) * size).setMaxResults(size).list();
        List<ProductEntity> productEntityList=new LinkedList<ProductEntity>();
        for (int i = 0; i < goodList.size(); i++)
        {
            Object[] good=(Object[])goodList.get(i);
            ProductEntity productEntity=new ProductEntity();
            productEntity.setProductId((Integer) good[0]);
            productEntity.setCategoryId((Integer) good[1]);
            productEntity.setShopId((Integer) good[2]);
            productEntity.setCityId((Integer) good[3]);
            productEntity.setProductTitle((String) good[4]);
            productEntity.setProductSortTitle((String) good[5]);
            productEntity.setProductImage((String) good[6]);
            productEntity.setProductStartTime((String) good[7]);
            productEntity.setProductValue((String) good[8]);
            productEntity.setProductPrice((String) good[9]);
            productEntity.setProductRibat((String) good[10]);
            productEntity.setProductBought((String) good[11]);
            productEntity.setProductMinquota((Integer) good[12]);
            productEntity.setProductMaxquota((Integer) good[13]);
            productEntity.setProductPost((String) good[14]);
            productEntity.setProductSoldout((String) good[15]);
            productEntity.setProductTip((String) good[16]);
            productEntity.setProductEndTime((Long) good[17]);
            productEntity.setProductDetail((String) good[18]);
            ShopEntity shopEntity=new ShopEntity();
            shopEntity.setShopId((Integer)good[19]);
            shopEntity.setShopName((String) good[20]);
            shopEntity.setShopTel((Integer) good[21]);
            shopEntity.setShopAddress((String) good[22]);
            shopEntity.setShopArea((String) good[23]);
            shopEntity.setShopOpenTime((Time) good[24]);
            shopEntity.setShopLon((Double) good[25]);
            shopEntity.setShopLat((Double) good[26]);
            shopEntity.setShopTrafficInfo((String)good[27]);
            productEntity.setShop(shopEntity);
            productEntityList.add(productEntity);
        }
        return productEntityList;
    }
    @Override
    @Transactional
    public long getCount(String cityId, String categoryId)
    {
        String COUNTSQL=this.COUNTSQL;
        if (!StringUtils.isEmpty(cityId))
        {
            COUNTSQL += " and cityId = " + cityId;
        }
        if (!StringUtils.isEmpty(categoryId))
        {
            COUNTSQL += " and categoryId = " + categoryId;
        }
        return (Long)sessionFactory.getCurrentSession().createQuery(COUNTSQL).uniqueResult();
    }
    @Override
    public List<ProductEntity> getProductEntitybyLBS(int page, int size, String category, double lat, double lon, double minlat, double minlon, double maxlat, double maxlon)
    {
        return null;
    }
    @Override
    public int getCountByLBS(String category, double lat, double lon, double minlat, double minlon, double maxlat, double maxlon)
    {
        return 0;
    }
}
