<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script>
    	function validate(){
    		var form = document.getElementById('createForm');
    		for(var i = 0; i< form.elements.length; i++){
    			var e = form.elements[i];
    			if (e.value == ""){
    				alert(e.name.toUpperCase() + " cannot be empty");
    				event.preventDefault();
    			}
    		}
    		
    	}
    </script>
    <title>Create Order</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../stylesheet/styles.css">

  </head>
  
  <body>
  <h1>Create Order</h1>
<form id= "createForm" action="<c:url value='/OrderServletCreate'/>" method="post">
	Order ID:<input type="number" name="orderId" value = "Auto-Increment fill" disabled="disabled"/>
	<span style="color: red; font-weight: 900">${errors.employee_id }</span>
	<br/>
	Store ID：<input type="number" name="storeId" value="${form.cart_id }"/>
	<span style="color: red; font-weight: 900">${errors.store_id }</span>
	<br/>
	Item ID：<input type="number" name="itemId" value="${form.cart_id }"/>
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
	<input type="submit" value="Create order" onclick="validate()"/>
</form>
  </body>
</html>
