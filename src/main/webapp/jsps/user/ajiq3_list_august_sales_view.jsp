<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<h3 align="center"> User Details </h3>
	<table border="1" width="70%" align="center">
	<tr>
		<th>order_id</th>
		<th>order_date</th>
		<th>COUNT</th>
		<th>orderstatus</th>
		
		
	</tr>
<c:forEach items="${UserList}" var="user">
	<tr>
		<td>${user.order_id}</td>
		<td>${user.order_date}</td>
		<td>${user.count}</td>
		<td>${user.orderstatus}</td>
		
	</tr>
</c:forEach>
</table>
</body>
</html>