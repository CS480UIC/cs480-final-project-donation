<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>Update Order</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../stylesheet/styles.css">

  </head>
  
  <body>
  <h1>Update an Order</h1>
<form action="<c:url value='/Entity1ServletUpdate'/>" method="post">
	<input type="hidden" name="method" value="search"/>
	Update order By ID:<input type="text" id="order_id" value="${form.order_id}"/>
	<span style="color: red; font-weight: 900">${errors.store_id }</span>
	<br/>
	Sold Date：<input type="date" name="soldDate" value="${form.order_name }"/>
	<span style="color: red; font-weight: 900">${errors.first_name }</span>
	<br/>
	Amount：<input type="number" name="amount" value="${form.description }"/>
	<span style="color: red; font-weight: 900">${errors.last_name }</span>
	<br/>
	Unit Price：<input type="number" name="unitPrice" value="${form.description }"/>
	<span style="color: red; font-weight: 900">${errors.last_name }</span>
	<br/>
	<br/>
	<input type="submit" value="Update Order"/>
</form>
  </body>
</html>
