<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Item</title>
    
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
  <h1>Delete Item</h1>
<form action="<c:url value='/ItemServletDelete'/>" method="post">
	<input type="hidden" name="method" value="search"/>
	Delete Item By name:<input type="text" name="item_name" value="${form.item_name}"/>
	<span style="color: red; font-weight: 900">${errors.item_name }</span>
	<br/>
	<input type="submit" value="Delete Item"/>
</form>
  </body>
</html>
