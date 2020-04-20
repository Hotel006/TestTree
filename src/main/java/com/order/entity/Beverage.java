package com.order.entity;

public class Beverage{
	//属性列表
	private	int	beverageid;
	private	int	price;
	private	String	name;
	private	String	details;
	private	String	photo;
	private	String	sort;
	private String good;
	//setter
	public void setBeverageid(int beverageid){
		this.beverageid = beverageid;
	}
	//getter
	public int getBeverageid(){
		 return beverageid;
	}
	//setter
	public void setPrice(int price){
		this.price = price;
	}
	//getter
	public int getPrice(){
		 return price;
	}
	//setter
	public void setName(String name){
		this.name = name;
	}
	//getter
	public String getName(){
		 return name;
	}
	//setter
	public void setDetails(String details){
		this.details = details;
	}
	//getter
	public String getDetails(){
		 return details;
	}
	//setter
	public void setPhoto(String photo){
		this.photo = photo;
	}
	//getter
	public String getPhoto(){
		 return photo;
	}
	//setter
	public void setSort(String sort){
		this.sort = sort;
	}
	//getter
	public String getSort(){
		 return sort;
	}
	public String getGood() {
		return good;
	}
	public void setGood(String good) {
		this.good = good;
	}
	
}
