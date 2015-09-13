package com.scau.beyondboy.model;
import javax.persistence.*;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/9
 * Time: 11:12
 */
@Entity
@Table(name = "product", schema = "", catalog = "android")
public class ProductEntity
{
    private int productId;
    private int categoryId;
    private Integer shopId;
    private Integer cityId;
    private String productTitle;
    private String productSortTitle;
    private String productImage;
    private String productStartTime;
    private String productValue;
    private String productPrice;
    private String productRibat;
    private String productBought;
    private int productMinquota;
    private int productMaxquota;
    private String productPost;
    private String productSoldout;
    private String productTip;
    private long productEndTime;
    private String productDetail;
    private ShopEntity shop;
    @Id
    @Column(name = "product_id")
    public int getProductId()
    {
        return productId;
    }
    public void setProductId(int productId)
    {
        this.productId = productId;
    }
    @Basic
    @Column(name = "category_id")
    public int getCategoryId()
    {
        return categoryId;
    }
    public void setCategoryId(int categoryId)
    {
        this.categoryId = categoryId;
    }
    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProductEntity that = (ProductEntity) o;

        if (productId != that.productId) return false;
        if (categoryId != that.categoryId) return false;

        return true;
    }
    @Override
    public int hashCode()
    {
        int result = productId;
        result = 31 * result + categoryId;
        return result;
    }
    @Basic
    @Column(name = "shop_id")
    public Integer getShopId()
    {
        return shopId;
    }
    public void setShopId(Integer shopId)
    {
        this.shopId = shopId;
    }
    @Basic
    @Column(name = "city_id")
    public Integer getCityId()
    {
        return cityId;
    }
    public void setCityId(Integer cityId)
    {
        this.cityId = cityId;
    }
    @Basic
    @Column(name = "product_title")
    public String getProductTitle()
    {
        return productTitle;
    }
    public void setProductTitle(String productTitle)
    {
        this.productTitle = productTitle;
    }
    @Basic
    @Column(name = "product_sort_title")
    public String getProductSortTitle()
    {
        return productSortTitle;
    }
    public void setProductSortTitle(String productSortTitle)
    {
        this.productSortTitle = productSortTitle;
    }
    @Basic
    @Column(name = "product_image")
    public String getProductImage()
    {
        return productImage;
    }
    public void setProductImage(String productImage)
    {
        this.productImage = productImage;
    }
    @Basic
    @Column(name = "product_start_time")
    public String getProductStartTime()
    {
        return productStartTime;
    }
    public void setProductStartTime(String productStartTime)
    {
        this.productStartTime = productStartTime;
    }
    @Basic
    @Column(name = "product_value")
    public String getProductValue()
    {
        return productValue;
    }
    public void setProductValue(String productValue)
    {
        this.productValue = productValue;
    }
    @Basic
    @Column(name = "product_price")
    public String getProductPrice()
    {
        return productPrice;
    }
    public void setProductPrice(String productPrice)
    {
        this.productPrice = productPrice;
    }
    @Basic
    @Column(name = "product_ribat")
    public String getProductRibat()
    {
        return productRibat;
    }
    public void setProductRibat(String productRibat)
    {
        this.productRibat = productRibat;
    }
    @Basic
    @Column(name = "product_bought")
    public String getProductBought()
    {
        return productBought;
    }
    public void setProductBought(String productBought)
    {
        this.productBought = productBought;
    }
    @Basic
    @Column(name = "product_minquota")
    public int getProductMinquota()
    {
        return productMinquota;
    }
    public void setProductMinquota(int productMinquota)
    {
        this.productMinquota = productMinquota;
    }
    @Basic
    @Column(name = "product_maxquota")
    public int getProductMaxquota()
    {
        return productMaxquota;
    }
    public void setProductMaxquota(int productMaxquota)
    {
        this.productMaxquota = productMaxquota;
    }
    @Basic
    @Column(name = "product_post")
    public String getProductPost()
    {
        return productPost;
    }
    public void setProductPost(String productPost)
    {
        this.productPost = productPost;
    }
    @Basic
    @Column(name = "product_soldout")
    public String getProductSoldout()
    {
        return productSoldout;
    }
    public void setProductSoldout(String productSoldout)
    {
        this.productSoldout = productSoldout;
    }
    @Basic
    @Column(name = "product_tip")
    public String getProductTip()
    {
        return productTip;
    }
    public void setProductTip(String productTip)
    {
        this.productTip = productTip;
    }
    @Basic
    @Column(name = "product_end_time")
    public long getProductEndTime()
    {
        return productEndTime;
    }
    public void setProductEndTime(long productEndTime)
    {
        this.productEndTime = productEndTime;
    }
    @Basic
    @Column(name = "product_detail")
    public String getProductDetail()
    {
        return productDetail;
    }
    public void setProductDetail(String productDetail)
    {
        this.productDetail = productDetail;
    }
    @ManyToOne
    public ShopEntity getShop()
    {
        return shop;
    }
    public void setShop(ShopEntity shop)
    {
        this.shop = shop;
    }
}
