package  com.order.entity;

public class Order{
	//属性列表
	private	int	orderid;
	private	java.util.Date	ordertime;
	private	String	ordermoney;
	private	String	orderdetalis;
	private	String	orderaddres;
	private	String	orderremark;
	private	String	ordernumber;
	private	String	orderphone;
	private	int	orderuserid;
	//setter
	public void setOrderid(int orderid){
		this.orderid = orderid;
	}
	//getter
	public int getOrderid(){
		 return orderid;
	}
	//setter
	public void setOrdertime(java.util.Date ordertime){
		this.ordertime = ordertime;
	}
	//getter
	public java.util.Date getOrdertime(){
		 return ordertime;
	}
	//setter
	public void setOrdermoney(String ordermoney){
		this.ordermoney = ordermoney;
	}
	//getter
	public String getOrdermoney(){
		 return ordermoney;
	}
	//setter
	public void setOrderdetalis(String orderdetalis){
		this.orderdetalis = orderdetalis;
	}
	//getter
	public String getOrderdetalis(){
		 return orderdetalis;
	}
	//setter
	public void setOrderaddres(String orderaddres){
		this.orderaddres = orderaddres;
	}
	//getter
	public String getOrderaddres(){
		 return orderaddres;
	}
	public String getOrderremark() {
		return orderremark;
	}
	public void setOrderremark(String orderremark) {
		this.orderremark = orderremark;
	}
	//setter
	public void setOrdernumber(String ordernumber){
		this.ordernumber = ordernumber;
	}
	//getter
	public String getOrdernumber(){
		 return ordernumber;
	}
	//setter
	public void setOrderphone(String orderphone){
		this.orderphone = orderphone;
	}
	//getter
	public String getOrderphone(){
		 return orderphone;
	}
	//setter
	public void setOrderuserid(int orderuserid){
		this.orderuserid = orderuserid;
	}
	//getter
	public int getOrderuserid(){
		 return orderuserid;
	}
}
