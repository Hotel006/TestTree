package com.order.service.impl;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.order.dao.BeverageDao;
import com.order.entity.Beverage;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring-dao.xml", "classpath:spring/spring-service.xml" })
public class BeverageServiceImplTest {

	@Autowired
	private BeverageDao beveragedao;
	@Test
	public void test() throws Exception{
		List<Beverage> b= beveragedao.queryAll();
		for (Beverage beverage : b) {
			System.out.println(beverage.getName());
		}
	}

}
