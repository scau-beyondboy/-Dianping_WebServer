package com.scau.beyondboy.dao.impl;
import com.scau.beyondboy.dao.ProductDao;
import com.scau.beyondboy.model.ProductEntity;
import com.scau.beyondboy.model.ShopEntity;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import javax.transaction.Transactional;
import java.util.LinkedList;
import java.util.List;
/*
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/10
 * Time: 20:17
 */
@Repository
public class ProductDaoImpl implements ProductDao
{
    private String GOODSHQL = "SELECT product.productId, product.categoryId,product.shopId,product.cityId,product.productTitle,"
        + "product.productSortTitle, product.productImage, product.productStartTime,product.productValue,product.productPrice,"
        + "product.productRibat, product.productBought, product.productMinquota, product.productMaxquota,product.productPost,"
        + " product.productSoldout,product.productTip, product.productEndTime,product.productDetail,shop.shopId,"
        + "shop.shopName, shop.shopTel,shop.shopAddress,shop.shopArea,shop.shopOpenTime, shop.shopLon, shop.shopLat,shop.shopTrafficInfo  from  ProductEntity as product,ShopEntity as shop where product.shopId=shop.shopId";
    private String COUNTSQL = "select  count(*) from ProductEntity where 1=1";
    private SessionFactory sessionFactory;
    @Autowired
    public ProductDaoImpl(SessionFactory sessionFactory)
    {
        this.sessionFactory = sessionFactory;
    }
    @Override
    @Transactional
    public List<ProductEntity> getList(String cityId, String categoryId, int page, int size)
    {
        String hql = GOODSHQL + (StringUtils.isEmpty(cityId) ? "" : (" and product.cityId = " + cityId))
            + (StringUtils.isEmpty(categoryId) ? "" : (" and product.categoryId = " + categoryId));//从哪条数据开始查询，查询多少条数据
        List goodList = sessionFactory.getCurrentSession().createQuery(hql).setFirstResult((page - 1) * size).setMaxResults(size).list();
        List<ProductEntity> productEntityList = new LinkedList<ProductEntity>();
        for (int i = 0; i < goodList.size(); i++)
        {
            Object[] good = (Object[]) goodList.get(i);
            ProductEntity productEntity = new ProductEntity();
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
            productEntity.setProductEndTime((String) good[17]);
            productEntity.setProductDetail((String) good[18]);
            ShopEntity shopEntity = new ShopEntity();
            shopEntity.setShopId((Integer) good[19]);
            shopEntity.setShopName((String) good[20]);
            shopEntity.setShopTel((Integer) good[21]);
            shopEntity.setShopAddress((String) good[22]);
            shopEntity.setShopArea((String) good[23]);
            shopEntity.setShopOpenTime((String) good[24]);
            shopEntity.setShopLon((Double) good[25]);
            shopEntity.setShopLat((Double) good[26]);
            shopEntity.setShopTrafficInfo((String) good[27]);
            productEntity.setShop(shopEntity);
            productEntityList.add(productEntity);
        }
        return productEntityList;
    }
    @Override
    @Transactional
    public long getCount(String cityId, String categoryId)
    {
        String COUNTSQL = this.COUNTSQL;
        if (!StringUtils.isEmpty(cityId))
        {
            COUNTSQL += " and cityId = " + cityId;
        }
        if (!StringUtils.isEmpty(categoryId))
        {
            COUNTSQL += " and categoryId = " + categoryId;
        }
        return (Long) sessionFactory.getCurrentSession().createQuery(COUNTSQL).uniqueResult();
    }
    @Override
    @Transactional
    public List<ProductEntity> getProductEntitybyLBS(int page, int size, String category, double lat, double lon, double minlat, double minlon, double maxlat, double maxlon)
    {
        StringBuilder sql = new StringBuilder(String.format("select GLength(LineString(PointFromWKB( POINT(%s, %s)),PointFromWKB( POINT(s.shop_lat, s.shop_lon))))*69*1609.344 AS distance,product_id,category_id,p.shop_id as product_shopid,city_id,product_title,product_sort_title,product_image,product_start_time,product_value,product_price,product_ribat,product_bought,product_minquota,product_maxquota,product_post,product_soldout,product_tip,product_end_time,product_detail,s.* from product p,shop s where p.shop_id=s.shop_id", lat, lon));
        if (!StringUtils.isEmpty(category))
        {
            if (category.length() < 4)
            {
                sql.append(String.format(" and p.category_id=%s", category));
            } else
            {
                sql.append(String.format(" and p.sub_category_id=%s", category));
            }
        }
        sql.append(String.format(" and s.shop_lon BETWEEN %s and %s and s.shop_lat BETWEEN %s and %s ORDER BY distance", minlon, maxlon, minlat, maxlat));
        if (page == 0)
        {
            page = 1;
        }
        List nearByList = sessionFactory.getCurrentSession().createSQLQuery(sql.toString()).setFirstResult((page-1)*size).setMaxResults(size).list();
        List<ProductEntity> productEntityList = new LinkedList<ProductEntity>();
        for (int i = 0; i < nearByList.size(); i++)
        {
            Object[] nearbyProduct = (Object[]) nearByList.get(i);
            ProductEntity productEntity = new ProductEntity();
            productEntity.setProductId((Integer) nearbyProduct[1]);
            productEntity.setCategoryId((Integer) nearbyProduct[2]);
            productEntity.setShopId((Integer) nearbyProduct[3]);
            productEntity.setCityId((Integer) nearbyProduct[4]);
            productEntity.setProductTitle((String) nearbyProduct[5]);
            productEntity.setProductSortTitle((String) nearbyProduct[6]);
            productEntity.setProductImage((String) nearbyProduct[7]);
            productEntity.setProductStartTime((String) nearbyProduct[8]);
            productEntity.setProductValue((String) nearbyProduct[9]);
            productEntity.setProductPrice((String) nearbyProduct[10]);
            productEntity.setProductRibat((String) nearbyProduct[11]);
            productEntity.setProductBought((String) nearbyProduct[12]);
            productEntity.setProductMinquota((Integer) nearbyProduct[13]);
            productEntity.setProductMaxquota((Integer) nearbyProduct[14]);
            productEntity.setProductPost((String) nearbyProduct[15]);
            productEntity.setProductSoldout((String) nearbyProduct[16]);
            productEntity.setProductTip((String) nearbyProduct[17]);
            productEntity.setProductEndTime((String) nearbyProduct[18]);
            productEntity.setProductDetail((String) nearbyProduct[19]);
            ShopEntity shopEntity = new ShopEntity();
            shopEntity.setShopId((Integer) nearbyProduct[20]);
            shopEntity.setShopName((String) nearbyProduct[21]);
            shopEntity.setShopTel((Integer) nearbyProduct[22]);
            shopEntity.setShopAddress((String) nearbyProduct[23]);
            shopEntity.setShopArea((String) nearbyProduct[24]);
            shopEntity.setShopOpenTime((String) nearbyProduct[25]);
            shopEntity.setShopLon((Double) nearbyProduct[26]);
            shopEntity.setShopLat((Double) nearbyProduct[27]);
            shopEntity.setShopTrafficInfo((String) nearbyProduct[28]);
            productEntity.setShop(shopEntity);
            productEntityList.add(productEntity);
        }
        return productEntityList;
    }
    @Override
    public int getCountByLBS(String category, double lat, double lon, double minlat, double minlon, double maxlat, double maxlon)
    {
        StringBuilder sql = new StringBuilder("select count(*) as count from prodouct,shop where prodouct.shop_id=shop.shop_id ");
        if (!StringUtils.isEmpty(category))
        {
            if (category.length() < 4)
            {
                sql.append(String.format(" and p.category_id=%s", category));
            } else
            {
                sql.append(String.format(" and p.sub_category_id=%s", category));
            }
        }
        sql.append(String.format(" and s.shop_lon BETWEEN %s and %s and s.shop_lat BETWEEN %s and %s", minlon, maxlon, minlat, maxlat));
        return (Integer) sessionFactory.getCurrentSession().createSQLQuery(sql.toString()).uniqueResult();
    }
    @Override
    @Transactional
    public List<ProductEntity> getTest()
    {
        String sql = "select GLength(LineString(PointFromWKB( POINT(23.554, 116.315495)),PointFromWKB( POINT(s.shop_lat, s.shop_lon))))*69*1609.344 AS distance,product_id,category_id,p.shop_id as product_shopid,city_id,product_title,product_sort_title,product_image,product_start_time,product_value,product_price,product_ribat,product_bought,product_minquota,product_maxquota,product_post,product_soldout,product_tip,product_end_time,product_detail,s.* from product p,shop s where p.shop_id=s.shop_id and s.shop_lon BETWEEN 106.51359909766012 and 126.11739090233988 and s.shop_lat BETWEEN 14.568760277922449 and 32.539239722077546 ORDER BY distance";
        List nearByList = sessionFactory.getCurrentSession().createSQLQuery(sql).list();
        List<ProductEntity> productEntityList = new LinkedList<ProductEntity>();
        for (int i = 0; i < nearByList.size(); i++)
        {
            Object[] nearbyProduct = (Object[]) nearByList.get(i);
            ProductEntity productEntity = new ProductEntity();
            productEntity.setProductId((Integer) nearbyProduct[1]);
            productEntity.setCategoryId((Integer) nearbyProduct[2]);
            productEntity.setShopId((Integer) nearbyProduct[3]);
            productEntity.setCityId((Integer) nearbyProduct[4]);
            productEntity.setProductTitle((String) nearbyProduct[5]);
            productEntity.setProductSortTitle((String) nearbyProduct[6]);
            productEntity.setProductImage((String) nearbyProduct[7]);
            productEntity.setProductStartTime((String) nearbyProduct[8]);
            productEntity.setProductValue((String) nearbyProduct[9]);
            productEntity.setProductPrice((String) nearbyProduct[10]);
            productEntity.setProductRibat((String) nearbyProduct[11]);
            productEntity.setProductBought((String) nearbyProduct[12]);
            productEntity.setProductMinquota((Integer) nearbyProduct[13]);
            productEntity.setProductMaxquota((Integer) nearbyProduct[14]);
            productEntity.setProductPost((String) nearbyProduct[15]);
            productEntity.setProductSoldout((String) nearbyProduct[16]);
            productEntity.setProductTip((String) nearbyProduct[17]);
            productEntity.setProductEndTime((String) nearbyProduct[18]);
            productEntity.setProductDetail((String) nearbyProduct[19]);
            ShopEntity shopEntity = new ShopEntity();
            shopEntity.setShopId((Integer) nearbyProduct[20]);
            shopEntity.setShopName((String) nearbyProduct[21]);
            shopEntity.setShopTel((Integer) nearbyProduct[22]);
            shopEntity.setShopAddress((String) nearbyProduct[23]);
            shopEntity.setShopArea((String) nearbyProduct[24]);
            shopEntity.setShopOpenTime((String) nearbyProduct[25]);
            shopEntity.setShopLon((Double) nearbyProduct[26]);
            shopEntity.setShopLat((Double) nearbyProduct[27]);
            shopEntity.setShopTrafficInfo((String) nearbyProduct[28]);
            productEntity.setShop(shopEntity);
            productEntityList.add(productEntity);
        }
        return productEntityList;
    }
}
