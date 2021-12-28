<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read Employee Output</title>
    
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
  <h1>Read Employee Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
    Store Id:<input type="text" name="store_id" value="${employee.store_id}" disabled/>
	<br/>
	Employee First Name :<input type="text" name="first_name" value="${employee.first_name }" disabled/>
	<br/>
	Employee Last Name :<input type="text" name="last_name" value="${employee.last_name }" disabled/>
	<br/>
	Gender：<input type="text" name="gender" value="${employee.gender }" disabled/>
	<br/>
	Position：<input type="text" name="position" value="${employee.position }" disabled/>
	<br/>
	Email	：<input type="text" name="email" value="${employee.email }" disabled/>
	<br/>
</form>

<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
</body>
</html>
