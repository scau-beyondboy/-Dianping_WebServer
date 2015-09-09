package com.scau.beyondboy.dao;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/4
 * Time: 12:07
 */
import com.scau.beyondboy.model.Category;
import org.springframework.stereotype.Repository;
public interface CategoryDao
{

	List<Category> getCategoryList();
	long getCategoryTotal();
}
