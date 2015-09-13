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
    public long  getCategoryTotal(@RequestParam(value = "city",required = false)String city,@RequestParam(value = "categoryId",required = false)String categoryId)
    {
        return productServices.getCount(city,categoryId);
    }
}
