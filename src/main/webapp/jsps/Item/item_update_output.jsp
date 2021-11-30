<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Store</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3,keyword4,keyword5">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>You Will Update this Store</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	Order_id   :<input type="text" name="s_name" value="${item.order_id }" disabled/>
	<br/>
	
	Old Category_id ：<input type="text" name="category_id" value="${item.category_id }" disabled />
	<br/>
	Old Cart_id：<input type="text" name="cart_id" value="${item.cart_id }" disabled />
	<br/>
	Old Item_name	：<input type="text" name="item_name" value="${item.item_name }" disabled/>
	<br/>
	Old Description	：<input type="text" name="description" value="${item.description }" disabled/>
	<br/>
</form>
<h1>Please Update the values below</h1>
<form action="<c:url value='/ItemServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
	    <input type="hidden" name="item_name" value="${item.item_name }"/>
	<span style="color: red; font-weight: 900">${errors.item_name }</span>
	<br/>
				
	Order_id：<input type="text" name="order_id" value="${item.order_id }"/>
	<span style="color: red; font-weight: 900">${errors.order_id }</span>
	<br/>
	New Category_id：<input type="text" name="category_id" value="${item.category_id }"/>
	<span style="color: red; font-weight: 900">${errors.category_id }</span>
	<br/>
	New Cart_id	：<input type="text" name="cart_id" value="${item.cart_id }"/>
	<span style="color: red; font-weight: 900">${errors.cart_id }</span>
	<br/>
	New Item_id	：<input type="text" name="item_id" value="${item.item_id }"/>
	<span style="color: red; font-weight: 900">${errors.item_id }</span>
	<br/>
	New Description	：<input type="text" name="description" value="${item.description }"/>
	<span style="color: red; font-weight: 900">${errors.description }</span>
	<br/>
	<input type="submit" value="Update Item"/>
</form>

</body>
</html>
