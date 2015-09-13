package com.scau.beyondboy.controller;
import com.scau.beyondboy.model.Category;
import com.scau.beyondboy.services.CategoryServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/9
 * Time: 10:26
 */
@Controller
public class CategoryController
{
    @Qualifier("categoryServices")
    @Autowired
    CategoryServices categoryServices;
    @RequestMapping(value = "/category/list",method = RequestMethod.GET)
    @ResponseBody
    public List<Category> getCategoryList()
    {
        return categoryServices.getCategoryList();
    }
    @RequestMapping(value = "/category/total",method = RequestMethod.GET)
    @ResponseBody
    public long getCategoryTotal()
    {
        return categoryServices.getCategoryTotal();
    }
    @RequestMapping(value = "/category",method = RequestMethod.GET)
    @ResponseBody
    public List<Category> getCategoryData()
    {
        return categoryServices.getCategoryData();
    }
}
