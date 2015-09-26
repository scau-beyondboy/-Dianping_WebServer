package com.scau.beyondboy.controller;
import com.scau.beyondboy.model.ProductEntity;
import com.scau.beyondboy.services.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/10
 * Time: 22:06
 */
@Controller
public class ProductController
{
    @Autowired
    ProductServices productServices;
    @RequestMapping(value = "/product/list",method = RequestMethod.GET)
    @ResponseBody
    public List<ProductEntity>  getList(@RequestParam(value = "city",required = false)String city,@RequestParam(value = "categoryId",required = false)String categoryId,@RequestParam("page") int page,@RequestParam("size")int size)
    {
        return productServices.getList(city,categoryId,page,size);
    }
    @RequestMapping(value = "/product/total",method = RequestMethod.GET)
    @ResponseBody
    public long getProductTotal(@RequestParam(value = "city", required = false) String city, @RequestParam(value = "categoryId", required = false) String categoryId)
    {
        return productServices.getCount(city, categoryId);
    }
    @RequestMapping(value = "/product/nearby/list",method = RequestMethod.GET)
    @ResponseBody
    public List<ProductEntity> getProductNearbyList(@RequestParam("page") int page,@RequestParam("size")int size,@RequestParam(value = "category",required = false) String category,@RequestParam("lat")double lat,@RequestParam("lon")double lon,@RequestParam("minlat")double minlat,@RequestParam("minlon") double minlon,@RequestParam("maxlat")double maxlat,@RequestParam("maxlon")double maxlon)
    {
        return productServices.getProductEntitybyLBS(page, size, null, lat, lon, minlat, minlon, maxlat, maxlon);
    }
    //http://localhost:8080/product/nearby?page=1&size=5&lat=23.554&lon=116.3154950&raidus=1000000
    @RequestMapping(value = "/product/nearby",method = RequestMethod.GET)
    @ResponseBody
    public List<ProductEntity> getNearProductEntitybyLBS(@RequestParam("page") int page,@RequestParam("size")int size, @RequestParam("lat")double lat,@RequestParam("lon")double lon,@RequestParam("raidus") int raidus,@RequestParam(value = "category",required = false) String category)
    {
        return productServices.getNearProductEntitybyLBS(page, size, lat, lon, raidus, category);
    }

    @RequestMapping(value = "/product/test",method = RequestMethod.GET)
    @ResponseBody
    public List<ProductEntity> getTest()
    {
        return productServices.getTest();
    }

}
