<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Employee Create</title>
    
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
  <h1>Employee Create</h1>
<form action="<c:url value='/Entity1ServletCreate'/>" method="post">
	Employee ID:<input type="text" name="employee_id" value="${form.employee_id }"/>
	<span style="color: red; font-weight: 900">${errors.employee_id }</span>
	<br/>
	Store ID：<input type="text" name="store_id" value="${form.store_id }"/>
	<span style="color: red; font-weight: 900">${errors.store_id }</span>
	<br/>
	First Name	：<input type="text" name="first_name" value="${form.first_name }"/>
	<span style="color: red; font-weight: 900">${errors.first_name }</span>
	<br/>
	Last Name	：<input type="text" name="last_name" value="${form.last_name }"/>
	<span style="color: red; font-weight: 900">${errors.last_name }</span>
	<br/>
	Gender	：<input type="text" name="gender" value="${form.gender }"/>
	<span style="color: red; font-weight: 900">${errors.gender }</span>
	<br/>
	Position	：<input type="text" name="position" value="${form.position }"/>
	<span style="color: red; font-weight: 900">${errors.position }</span>
	<br/>
	Email	：<input type="text" name="email" value="${form.email }"/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/>
	<input type="submit" value="Create Employee"/>
</form>
  </body>
</html>
