package com.order.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.order.entity.Beverage;
import com.order.service.BeverageService;

@Controller
@RequestMapping("/order")
public class Beveragecontroller {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private BeverageService beverageService;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String showAll(Model model){
		List<Beverage> list = beverageService.getList();
		model.addAttribute("list",JSON.toJSON(list));
		List<Beverage> list2 =beverageService.getSortList();
		model.addAttribute("sort", JSON.toJSON(list2));
		return "/index";
	}

}
