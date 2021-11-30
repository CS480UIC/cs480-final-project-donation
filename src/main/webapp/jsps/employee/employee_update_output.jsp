<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Employee</title>
    
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
  <h1>Update Employee</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	First Name    :<input type="text" name="first_name" value="${employee.first_name }" disabled/>
	<br/>
	
	Last Name：<input type="text" name="last_name" value="${employee.last_name }" disabled />
	<br/>
	
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/EmployeeServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				
	Store Id：<input type="text" name="store_id" value="${employee.store_id }"/>
	<span style="color: red; font-weight: 900">${errors.store_id }</span>
	<br/>
	<input type="hidden" name="first_name" value="${employee.first_name }"/>
	<input type="hidden" name="last_name" value="${employee.last_name }"/>
	Gender	：<input type="text" name="gender" value="${employee.gender }"/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/>
	Position	：<input type="text" name="position" value="${employee.position }"/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/>
	Email	：<input type="text" name="email" value="${employee.email }"/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/>
	<input type="submit" value="Update Employee"/>
</form>

</body>
</html>
