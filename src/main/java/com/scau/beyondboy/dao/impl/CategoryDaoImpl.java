package com.scau.beyondboy.dao.impl;
import com.scau.beyondboy.dao.CategoryDao;
import com.scau.beyondboy.model.Category;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/9
 * Time: 9:38
 */
@Repository
public class CategoryDaoImpl implements CategoryDao
{
    public static final String COUNTHQL = "select new com.scau.beyondboy.model.Category(categoryId,count(categoryId)) from ProductEntity group by categoryId order by categoryId";
    public static final String TOTALHQL = "select count(categoryId) from ProductEntity ";
    private SessionFactory sessionFactory;
    @Autowired
    public CategoryDaoImpl(SessionFactory sessionFactory)
    {
        this.sessionFactory=sessionFactory;
    }
    @Transactional
    @Override
    public List<Category> getCategoryList()
    {
        return sessionFactory.getCurrentSession().createQuery(COUNTHQL).list();
    }
    @Transactional
    @Override
    public long getCategoryTotal()
    {
        return (Long)(sessionFactory.getCurrentSession().createQuery(TOTALHQL).uniqueResult());
    }
}
