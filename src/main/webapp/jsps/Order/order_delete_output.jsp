<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Order</title>
    
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
  <h1>You Will Delete This Order</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/OrderServletDelete'/>" method="post">
	<input type="hidden" name="method" value="delete"/>
		<input type="hidden" name="order_id" value="${orders.order_id }"/>
		
		
	Order_id：<input type="text" name="order_id" value="${orders.order_id }" disabled/>
	<br/>
	User_id	：<input type="text" name="user_id" value="${orders.user_id }" disabled/>
	<br/>
	Order_date	：<input type="text" name="order_date" value="${orders.order_date }" disabled/>
	<br/>
	Total_amount	：<input type="text" name="total_amount" value="${orders.total_amount }" disabled/>
	<br/>
	Orderstatus	：<input type="text" name="orderstatus" value="${orders.orderstatus }" disabled/>
	<br/>
	<input type="submit" value="Delete Order"/>
</form>

</body>
</html>
