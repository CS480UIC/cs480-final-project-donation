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
	
	Sales ID：<input type="number" name="sales_id" value="${form.sales_id }"/>
	<span style="color: red; font-weight: 900">${errors.sales_id }</span>
	<br/>
	User ID：<input type="number" name="user_id" value="${form.user_id }"/>
	<span style="color: red; font-weight: 900">${errors.user_id }</span>
	<br/>
	Order Date：<input type="text" name="order_date" value="${form.order_date }"/>
	<span style="color: red; font-weight: 900">${errors.order_date }</span>
	<br/>
	Total Amount：<input type="text" name="total_amount" value="${form.total_amount }"/>
	<span style="color: red; font-weight: 900">${errors.total_amount }</span>
	<br/>
	Order Status：<input type="text" name="orderstatus" value="${form.orderstatus }"/>
	<span style="color: red; font-weight: 900">${errors.orderstatus }</span>
	<br/>
	<br/>
	<input type="submit" value="Create order" onclick="validate()"/>
</form>
  </body>
</html>
