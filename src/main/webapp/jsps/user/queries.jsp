<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>body</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>Welcome to Donation</h1>
    <br>
    <a href="<c:url value='/findAll'/>" target="body">Please list all the user in the table</a>&nbsp;&nbsp;
    <br>
 	<a href="<c:url value='/findBiggerAvgSaleView'/>" target="body">Please list all sales who total sale amount more than average in order table</a>&nbsp;&nbsp;<br>
 	<a href="<c:url value='/findOrderUserView'/>" target="body">Please list all users who put orders in order tables</a>&nbsp;&nbsp;<br>
 	<a href="<c:url value='/findAllSalesView'/>" target="body">Please list all sales in the table</a>&nbsp;&nbsp;<br>
 	<a href="<c:url value='/findSalesWithLessAmount'/>" target="body">Please list all the Sales who sales amount less 10 dollars</a>&nbsp;&nbsp;<br>
 	<a href="<c:url value='/findGetItemCount'/>" target="body">Please list all items in donation store</a>&nbsp;&nbsp;<br>
 	
    
  </body>
</html>
