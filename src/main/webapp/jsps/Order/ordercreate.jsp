<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Orders Create</title>
    
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
  <h1>Create Orders Record</h1>
<form action="<c:url value='/OrderServletCreate'/>" method="post">
	
	Order_id：<input type="text" name="order_id" value="${form.order_id }"/>
	<span style="color: red; font-weight: 900">${errors.order_id}</span>
	<br/>
	User_id：<input type="text" name="user_id" value="${form.user_id }"/>
	<span style="color: red; font-weight: 900">${errors.user_id }</span>
	<br/>
	Order_date：<input type="text" name="order_date" value="${form.order_date }"/>
	<span style="color: red; font-weight: 900">${errors.order_date }</span>
	<br/>
	Total_amount ：<input type="text" name="total_amount" value="${form.total_amount }"/>
	<span style="color: red; font-weight: 900">${errors.total_amount }</span>
	<br/>
	Orderstatus ：<input type="text" name="orderstatus" value="${form.orderstatus }"/>
	<span style="color: red; font-weight: 900">${errors.orderstatus }</span>
	<br/>
	<input type="submit" value="Create Order"/>
</form>
  </body>
</html>
