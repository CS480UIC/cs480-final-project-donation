<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read Store Output</title>
    
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
  <h1>Read Store Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	Store Name   :<input type="text" name="store_name" value="${store.store_name }" size=50 disabled/>
	<br/>
	
	Address：<input type="text" name="address" value="${store.address }" disabled />
	<br/>
	Phone：<input type="text" name="phone" value="${store.phone }" disabled />
	<br/>
	Email	：<input type="text" name="email" value="${store.email }" size=50 disabled/>
	<br/>
</form>

<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
</body>
</html>
