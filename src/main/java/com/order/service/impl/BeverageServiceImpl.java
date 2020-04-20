package com.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.order.dao.BeverageDao;
import com.order.entity.Beverage;
import com.order.service.BeverageService;

@Service
public class BeverageServiceImpl implements BeverageService{
	@Autowired
	private BeverageDao beveragedao;
	
	@Override
	public List<Beverage> getList() {
		
		return beveragedao.queryAll();
	}
	
	@Override
	public List<Beverage> getSortList(){
		return beveragedao.querySort();
	}

}
