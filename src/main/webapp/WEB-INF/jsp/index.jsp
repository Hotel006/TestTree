<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>点餐</title>
		<meta name="keywords" content="KEYWORDS..." />
		<meta name="description" content="DESCRIPTION..." />
		<meta name="author" content="DeathGhost" />
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name='apple-touch-fullscreen' content='yes'>
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="format-detection" content="telephone=no">
		<meta name="format-detection" content="address=no">
		<meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
		<!--导航栏渐变开始-->
		<link rel="stylesheet" href="css/reset.css">

		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/swiper3.07.min.css" />
		<link rel="stylesheet" href="css/index.css">
		<script src="js/jquery.js"></script>
		<script src="js/swiper.min.js"></script>
		<style>
			nav a {
			    display: block;
			    -webkit-box-flex: 1;
			    -moz-box-flex: 1;
			    text-align: center;
			    color: #108EE9;
			    line-height: 1.2;
			    color: #108EE9;
			    text-shadow: 0 1px 1px white;
			}
			.addclasstruenav{color: #108EE9;}	
			
			
		</style>
		<!--地区参数传值-->
		
	</head>

	<body>
		<!--header-->
		<header >
			<a href="scanCode.html" class="location" id="location" data-title-type="native">
				<img src="img/sys.png" />
			</a>

			
			<a class="rt_searchIcon" href="map.html"><img style="width:70%;" src="img/mapIcon.png"></a>
		</header>

		<!--slide-->
		<div id="slide" class="public-banner">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="#">
						<img src="upload/banner1.jpg" />
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#">
						<img src="upload/banner2.jpg" />
					</a>
				</div>
			</div>
			<div class="pagination"></div>
		</div>
		
	
		
	<!--分类商品-->
		<div class="main">
	<div class="left-menu" id="sort">
		
	</div>
	<div class="con" id="show">
		
	</div>
</div>
<div class="footer">  
	<div class="left">
		<span id="cartN">
			<img src="img/shop_03.png"/>
			<span id="totalcountshow">0</span>
			<span class="totalpriceshow">￥<em id="totalpriceshow">0</em></span>
		</span>				
		</div>  
	<div class="right">  
		<a id="btnselect" class="xhlbtn  disable" href="dingdan.html">去结算</a>  
	</div>   
</div>
<div style="height:1.2rem;"></div>
<nav>
	<a href="index.html" class="homeIcon addclasstruenav"><img src="img/index1-1.png">点餐</a>
	<a href="zhuangtai.html" class="categoryIcon"><img src="img/index2.png">订单</a>
	<a href="service.html" class="cartIcon numberCount"><img src="img/index3.png">服务</a>
	<a href="about-us.html" class="userIcon"><img src="img/index4.png">我的</a>
</nav>
		<script language="javascript"> 
			var mySwiper = new Swiper('.swiper-container',{
				prevButton:'.swiper-button-prev',
				nextButton:'.swiper-button-next',
				})
		</script>
		<script>
		 
		 $(function(){
	        var showsortjson=JSON.parse('${sort}');
	        var html="<ul>"+
	        "<li class='active'>店长推荐<span class='num-price'></span></li>";
	        $.each(showsortjson,function(index,datas){
	        	html+="<li id='"+datas.sort+"'>"+datas.sort+"系列</li>"
	        });
	        html+="</ul>";
			 $("#sort").html(html);
		 });
		
		 $(function(){
		        var showsortjson=JSON.parse('${sort}');
		        var showmainjson=JSON.parse('${list}');
		        var html="<div class='right-con con-active' id='show'>"
		        +"<ul>";
				  $.each(showmainjson,function(index,datas){
					  if(datas.good==1){
						  html+=("<li class='clearfix'>"+
							"<div class='menu-img'><img src='img/index (2).png' width='55' height='55' /></div>"+	
							"<div class='menu-txt'>"+	
								"<h4>"+datas.name+"</h4>"+	
								"<h2>￥"+datas.price+"</h2>"+	
								"<p class='list2'>"+		
									"<div class='btn'>"+	  
										" <button class='minus'>"+	  
											" <strong>-</strong>"+	  
										" </button>"+	  
										" <i>0</i>"+	  
										 " <button class='add'>"+	  
										"	 <strong>+</strong>"+	  
										" </button>"+	  
										" <i class='price'>"+datas.price+"</i>"+	  
									 "</div> "+	
								"</p>"+	
							"</div>"+	
						"</li>");
					  }
	                });
				  html+="</ul>"+
				  "</div>";
				  
				  
		        $.each(showsortjson,function(index,sort){
		        	console.log(sort);
		        	 html+= "<div class='right-con'>"+
		    			"<ul>"
		        	$.each(showmainjson,function(index,datas){
			        	if(datas.sort==sort.sort){
			        		html+="<li class='clearfix'>"+
								"<div class='menu-img'><img src='img/index (2).png' width='55' height='55' /></div>"+
								"<div class='menu-txt'>"+
									"<h4>"+datas.name+"</h4>"+
									"<h2>￥"+datas.price+"</h2>"+
									"<p class='list2'>"+	
										"<div class='btn'>"+  
											" <button class='minus'>"+  
												" <strong>-</strong>"+  
											 "</button>"+  
											 "<i>0</i>"+  
											  "<button class='add'>"+  
												 "<strong>+</strong>"+  
											 "</button>"+  
											 "<i class='price'>"+datas.price+"</i>"+  
										 "</div>"+ 
									"</p>"+
								"</div>"+
							"</li>"
			        	}
			        });
		        	 html+="</ul>"+
				    		"</div>"
		        });
		        $("#show").html(html);
			 });
		 
		 
		 
		
			$(document).ready(function() {
				var mySwiper = new Swiper('#slide', {
					autoplay: 5000,
					visibilityFullFit: true,
					loop: true,
					pagination: '.pagination',
				});
			});
		</script>
		<!--加减和tab切换-->
		<script type="text/javascript">
			$(function () {  
				//加的效果  
				$(".add").click(function () {  
					$(this).prevAll().css("display", "inline-block");  
					var n = $(this).prev().text();  
					var num = parseInt(n) + 1;  
					if (num == 0) { return; }  
					$(this).prev().text(num);  
					var danjia = $(this).next().text();//获取单价  
					var a = $("#totalpriceshow").html();//获取当前所选总价  
					$("#totalpriceshow").html((a * 1 + danjia * 1).toFixed(2));//计算当前所选总价  
					  
					var nm = $("#totalcountshow").html();//获取数量  
					$("#totalcountshow").html(nm*1+1);  
					jss();//<span style='font-family: Arial, Helvetica, sans-serif;'></span>   改变按钮样式
				});  
				//减的效果  
				$(".minus").click(function () {  
					var n = $(this).next().text();  
					var num = parseInt(n) - 1;  
			
					$(this).next().text(num);//减1  
			
					var danjia = $(this).nextAll(".price").text();//获取单价  
					var a = $("#totalpriceshow").html();//获取当前所选总价  
					$("#totalpriceshow").html((a * 1 - danjia * 1).toFixed(2));//计算当前所选总价  
					 
					var nm = $("#totalcountshow").html();//获取数量  
					$("#totalcountshow").html(nm * 1 - 1);  
					//如果数量小于或等于0则隐藏减号和数量  
					if (num <= 0) {  
						$(this).next().css("display", "none");  
						$(this).css("display", "none");  
						jss();//改变按钮样式  
						 return  
					}  
				});  
				function jss() {  
					var m = $("#totalcountshow").html();  
					if (m > 0) {  
						$(".right").find("a").removeClass("disable");  
					} else {  
					   $(".right").find("a").addClass("disable");  
					}  
				};
				//选项卡
				$(".con>div").hide();
				$(".con>div:eq(0)").show();	
				
				$(".left-menu li").click(function(){
					$(this).addClass("active").siblings().removeClass("active");
					var n = $(".left-menu li").index(this);
					$(".left-menu li").index(this);
					$(".con>div").hide();
					$(".con>div:eq("+n+")").show();	
				});
			});  
			
			 
			</script>
	</body>

</html>