<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Item</title>
    
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
  <h1>You Will Delete This Store</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/ItemServletDelete'/>" method="post">
	<input type="hidden" name="method" value="delete"/>
		<input type="hidden" name="item_name" value="${item.item_name }"/>
		

	Order_id：<input type="text" name="order_id" value="${item.order_id }" disabled/>
	<br/>
	Category_Id	：<input type="text" name="category_id" value="${item.categroy_id }" disabled/>
	<br/>
	Cart_Id	：<input type="text" name="cart_id" value="${item.cart_id }" disabled/>
	<br/>
	Item_name   :<input type="text" name="order_id" value="${item.item_name }" disabled/>
	<br/>
	Description	：<input type="text" name="description" value="${item.description }" disabled/>
	<br/>
	<input type="submit" value="Delete Item"/>
</form>

</body>
</html>
