package com.scau.beyondboy.services;

import com.scau.beyondboy.model.Category;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/4
 * Time: 12:07
 */
public interface CategoryServices
{

	List<Category> getCategoryList();
	long getCategoryTotal();
	public List<Category> getCategoryData();
}
