<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Order</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3,keyword4,keyword5,keyword6">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>You Will Update this Order</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>

	Order_id   :<input type="text" name="order_id" value="${orders.order_id }" size=50 disabled/>
	<br/>
	
	Sales_id   :<input type="number" name="sales_id" value="${orders.sales_id }" disabled/>
	<br/>
	
	User_id：<input type="number" name="user_id" value="${orders.user_id }" disabled />
	<br/>
	Order_date	：<input type="text" name="order_date" value="${orders.order_date }" disabled/>
	<br/>
	Total_amount	：<input type="text" name="total_amount" value="${orders.total_amount }" disabled/>
	<br/>
	Orderstatus	：<input type="text" name="orderstatus" value="${orders.orderstatus }" disabled/>
	<br/>
</form>
<h1>Please Update the values below</h1>
<form action="<c:url value='/OrderServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
	    <input type="hidden" name="order_id" value="${orders.order_id }"/>
	<span style="color: red; font-weight: 900">${errors.order_id }</span>
	<br/>
	New sales_id：<input type="number" name="sales_id" value="${orders.sales_id }"/>
	<span style="color: red; font-weight: 900">${errors.sales_id }</span>
	<br/>		
	New User_id：<input type="number" name="user_id" value="${orders.user_id }"/>
	<span style="color: red; font-weight: 900">${errors.user_id }</span>
	<br/>
	New Order_date：<input type="text" name="order_date" value="${orders.order_date }"/>
	<span style="color: red; font-weight: 900">${errors.order_date }</span>
	<br/>
	New Total_amount	：<input type="text" name="total_amount" value="${orders.total_amount }"/>
	<span style="color: red; font-weight: 900">${errors.total_amount }</span>
	<br/>
	New Orderstatus	：<input type="text" name="order_status" value="${orders.orderstatus }"/>
	<span style="color: red; font-weight: 900">${errors.orderstatus }</span>
	<br/>
	<input type="submit" value="Update Order"/>
</form>

</body>
</html>
