package com.order.service;

import java.util.List;

import com.order.entity.Beverage;


public interface BeverageService {
	/**
	 * 查询所有信息
	 * 
	 * @return
	 */
	List<Beverage> getList();

	/**
	 * 查询所有种类
	 * @return
	 */
	List<Beverage> getSortList();
	
	

}
