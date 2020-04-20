package com.order.dao;

import java.util.List;

import com.order.entity.Beverage;

public interface BeverageDao {
	
/**
 * 查询全部数据
 * @return
 */
	public List<Beverage> queryAll();
	
	/**
	 * 查询全部种类
	 * @return
	 */
	public List<Beverage> querySort();
}
