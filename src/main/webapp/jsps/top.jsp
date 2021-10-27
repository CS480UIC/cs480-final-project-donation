<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		background: #46b44c; 
	}
	a {
		text-transform:none;
		text-decoration:none;
	} 
	a:hover {
		text-decoration:underline;
	}
	ul {
		margin: 0;
		padding: 0;
		list-style-type: none; /*去除li前的标注*/
		background-color: #333;
		overflow: hidden; /*隐藏溢出的部分，保持一行*/
		}




	li {
		float: left; /*左浮动*/
	}




	li a, .dropbtn {
		display: inline-block; /*设置成块*/
		color: green;
		text-align: center;
		text-decoration: none;
		padding: 14px 16px;
	}

	li a:hover, .dropdown:hover .dropbtn { /*鼠标移上去，改变背景颜色*/
		background-color: #111;
	}


	.dropdown {
	/*display:inline-block将对象呈递为内联对象，但是对象的内容作为块对象呈递。旁边的内联对象会被呈递在同一行内，允许空格。*/
		display: inline-block;
	}

	.dropdown-content {
		display: none;
		position: absolute;
		background-color: #f9f9f9;
		min-width: 160px;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	}


	.dropdown-content a {
		display: block;
		color: black;
		padding: 10px 15px;
		text-decoration:none;
	}


	.dropdown-content a:hover {
		background-color: #a1a1a1;
	}


	.dropdown:hover .dropdown-content{
		display: block;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;">KAI QI</h1>
<div style="font-size: 10pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Register</a> |&nbsp;&nbsp;
			<div class="dropdown">
			  <button class="dropbtn">Store</button>
			  <div class="dropdown-content">			
		        <a href="<c:url value='/jsps/store/storecreate.jsp'/>" target="_parent">Create Store</a> 
		        <a href="<c:url value='/jsps/store/storeread.jsp'/>" target="_parent">Read Store</a> 
		        <a href="<c:url value='/jsps/store/storeupdate.jsp'/>" target="_parent">Update Store</a> 
		        <a href="<c:url value='/jsps/store/storedelete.jsp'/>" target="_parent">Delete Store</a>
	           </div>
	          </div>      
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
			<ul>
			<li><a href="<c:url value='/jsps/user/queries.jsp'/>" target="body">Query Result</a></li> &nbsp;&nbsp;
			<li><a href="<c:url value='/UserServletLogout'/>" target="_parent">Logout</a> </li>&nbsp;&nbsp;&nbsp; 
			 
			<div class="dropdown">
			 
			  <button class="dropbtn">Store</button>
			  <div class="dropdown-content">
				<a href="<c:url value='/jsps/store/storecreate.jsp'/>" target="_parent">Create Store</a>  
		        <a href="<c:url value='/jsps/store/storeread.jsp'/>" target="_parent">Read Store</a> 
		        <a href="<c:url value='/jsps/store/storeupdate.jsp'/>" target="_parent">Update Store</a> 
		        <a href="<c:url value='/jsps/store/storedelete.jsp'/>" target="_parent">Delete Store</a>
			  </div>
			 </div>	
			 
			 <div class="dropdown"> 
			 <button class="dropbtn">Employee</button>
			  <div class="dropdown-content">
				<a href="<c:url value='/jsps/employee/employeecreate.jsp'/>" target="_parent">Create Employee</a>  
		        <a href="<c:url value='/jsps/employee/employeeread.jsp'/>" target="_parent">Read Employee</a> 
		        <a href="<c:url value='/jsps/employee/employeeupdate.jsp'/>" target="_parent">Update Employee</a> 
		        <a href="<c:url value='/jsps/employee/employeedelete.jsp'/>" target="_parent">Delete Employee</a>
			 </div> 
			 </div>
			 
			 <!-- Add your two different tables here, just copy from line 127 to line 135 and change button Value to
			 your table name such as Orders, and change link a to yourtableCRUD.jsp  and Change the value, your do not 
			 change other CSS style code -->
			</ul>
			 
			 
		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

