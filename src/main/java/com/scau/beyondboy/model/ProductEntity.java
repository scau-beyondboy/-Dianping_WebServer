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
}
