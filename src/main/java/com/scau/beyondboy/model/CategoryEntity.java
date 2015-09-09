package com.scau.beyondboy.model;
import javax.persistence.*;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/9
 * Time: 11:06
 */
@Entity
@Table(name = "category", schema = "", catalog = "android")
public class CategoryEntity
{
    private int id;
    private String categoryName;
    private String categoryParent;
    @Id
    @Column(name = "id")
    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    @Basic
    @Column(name = "category_name")
    public String getCategoryName()
    {
        return categoryName;
    }
    public void setCategoryName(String categoryName)
    {
        this.categoryName = categoryName;
    }
    @Basic
    @Column(name = "category_parent")
    public String getCategoryParent()
    {
        return categoryParent;
    }
    public void setCategoryParent(String categoryParent)
    {
        this.categoryParent = categoryParent;
    }
    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CategoryEntity that = (CategoryEntity) o;

        if (id != that.id) return false;
        if (categoryName != null ? !categoryName.equals(that.categoryName) : that.categoryName != null) return false;
        if (categoryParent != null ? !categoryParent.equals(that.categoryParent) : that.categoryParent != null)
            return false;

        return true;
    }
    @Override
    public int hashCode()
    {
        int result = id;
        result = 31 * result + (categoryName != null ? categoryName.hashCode() : 0);
        result = 31 * result + (categoryParent != null ? categoryParent.hashCode() : 0);
        return result;
    }
}
