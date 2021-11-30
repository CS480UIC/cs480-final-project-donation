<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Store Create</title>
    
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
  <h1>Create Item Record</h1>
<form action="<c:url value='/ItemServletCreate'/>" method="post">
	
	Order_Id：<input type="text" name="item_name" value="${form.order_id }"/>
	<span style="color: red; font-weight: 900">${errors.order_id }</span>
	<br/>
	Category_Id：<input type="text" name="category_id" value="${form.category_id }"/>
	<span style="color: red; font-weight: 900">${errors.category_id }</span>
	<br/>
	Cart_Id：<input type="text" name="cart_id" value="${form.cart_id }"/>
	<span style="color: red; font-weight: 900">${errors.cart_id }</span>
	<br/>
	Item_Id：<input type="text" name="item_id" value="${form.item_id }"/>
	<span style="color: red; font-weight: 900">${errors.item_id }</span>
	<br/>
	Item Name：<input type="text" name="item_name" value="${form.item_name }"/>
	<span style="color: red; font-weight: 900">${errors.item_name }</span>
	<br/>
	Description：<input type="text" name="description" value="${form.description }"/>
	<span style="color: red; font-weight: 900">${errors.description }</span>
	<br/>
	<input type="submit" value="Create Item"/>
</form>
  </body>
</html>
