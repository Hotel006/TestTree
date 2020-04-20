package com.order.entity;

public class User{
	//属性列表
	private	int	usernameid;
	private	String	name;
	private	String	useradderss;
	private	String	userphone;
	//setter
	public void setUsernameid(int usernameid){
		this.usernameid = usernameid;
	}
	//getter
	public int getUsernameid(){
		 return usernameid;
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
	public void setUseradderss(String useradderss){
		this.useradderss = useradderss;
	}
	//getter
	public String getUseradderss(){
		 return useradderss;
	}
	//setter
	public void setUserphone(String userphone){
		this.userphone = userphone;
	}
	//getter
	public String getUserphone(){
		 return userphone;
	}
}
