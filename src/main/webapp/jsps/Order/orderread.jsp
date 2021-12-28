<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script>function validate(){
		var form = document.getElementById('readForm');
		var isEntered = false;
		for(var i = 0; i< form.elements.length; i++){
			var e = form.elements[i];
			if (e.value !== "" && e.value!="Read order"){
				isEntered = true;
			}
		}
		if (!isEntered){
			event.preventDefault();
			alert("Enter atleast one attribute to read against.")
		}
		
	}</script>
    
    <title>Order Read</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../stylesheet/styles.css">

  </head>
  
  <body>
  <h1>Order Read</h1>
<form id="readForm" action="<c:url value='/OrderServletRead'/>" method="post">
	
	order ID：<input type="number" name="order_id" value="${form.order_id }"/>
	<span style="color: red; font-weight: 900">${errors.order_id }</span>
	<br/>
	
	<br/>
	<input type="submit" value="Read Order" onclick="validate()"/>
</form>
  </body>
</html>
