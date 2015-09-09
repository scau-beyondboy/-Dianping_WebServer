package com.scau.beyondboy.model;

import javax.persistence.*;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/4
 * Time: 17:49
 */
@Entity
@Table(name = "city", schema = "", catalog = "android")
//@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class CityEntity
{
    private int id;
    private String cityName;
    private String citySortkey;
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
    @Column(name = "city_name")
    public String getCityName()
    {
        return cityName;
    }
    public void setCityName(String cityName)
    {
        this.cityName = cityName;
    }
    @Basic
    @Column(name = "city_sortkey")
    public String getCitySortkey()
    {
        return citySortkey;
    }
    public void setCitySortkey(String citySortkey)
    {
        this.citySortkey = citySortkey;
    }
    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CityEntity that = (CityEntity) o;

        if (id != that.id) return false;
        if (cityName != null ? !cityName.equals(that.cityName) : that.cityName != null) return false;
        if (citySortkey != null ? !citySortkey.equals(that.citySortkey) : that.citySortkey != null) return false;

        return true;
    }
    @Override
    public int hashCode()
    {
        int result = id;
        result = 31 * result + (cityName != null ? cityName.hashCode() : 0);
        result = 31 * result + (citySortkey != null ? citySortkey.hashCode() : 0);
        return result;
    }
}
