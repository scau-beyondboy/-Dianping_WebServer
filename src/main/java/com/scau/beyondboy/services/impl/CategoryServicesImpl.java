package com.scau.beyondboy.services.impl;
import com.scau.beyondboy.dao.CategoryDao;
import com.scau.beyondboy.model.Category;
import com.scau.beyondboy.services.CategoryServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/9
 * Time: 10:23
 */
@Service
public class CategoryServicesImpl implements CategoryServices
{
    @Qualifier("categoryDao")
    @Autowired
    CategoryDao categoryDao;
    @Override
    public List<Category> getCategoryList()
    {
        return categoryDao.getCategoryList();
    }
    @Override
    public long getCategoryTotal()
    {
        return categoryDao.getCategoryTotal();
    }
}
