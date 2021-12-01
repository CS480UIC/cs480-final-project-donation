<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script>
  	function validate(){
  		
  		if(document.getElementById('order_id').value == "" && document.getElementById('order_name').value == ""){
  			alert("Both Fields are empty");
  			event.preventDefault()
  		} else if (document.getElementById('order_id').value !== "" && document.getElementById('order_name').value !== ""){
  			alert("Fill only one of the fields");
  			event.preventDefault()
  		}
  	}
  </script>
    
    <title>Delete order</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	
	<link rel="stylesheet" type="text/css" href="../stylesheet/styles.css">


  </head>
  
  <body>
  <h1>Delete order</h1>
<form id = "deleteForm" action="<c:url value='/OrderServletDelete'/>" method="post">
	<input type="hidden" name="method" value="search"/>
	Delete By Order Id：<input type="text" name="order_id" value="${form.order_id }"/>
	<span style="color: red; font-weight: 900">${errors.order_id }</span>
	<br/>
	
	<input type="submit" value="Delete order" onclick="validate()"/>
</form>
  </body>
</html>
