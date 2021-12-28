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
		background: #9B9;
		border-radius: 30pt
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
		padding: 5px 10px;
		border-radius: 30pt;
		list-style-type: none; /*去除li前的标注*/
		background-color: #ADA;
		overflow: hidden; /*隐藏溢出的部分，保持一行*/
		margin-top:20px
		}




	li {
		float: left; /*左浮动*/
	}




	li a, .dropbtn {
		display: inline-block; /*设置成块*/
		color: black;
		background-color:#CCC;
		text-align: center;
		text-decoration: none;
		padding: 14px 16px;
		margin-top:3px;
		margin-left:2px;
		border-radius: 10pt;
	}

	li a:hover, .dropdown:hover .dropbtn { /*鼠标移上去，改变背景颜色*/
		background-color: #888;
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
		border-radius: 5pt;
		
	}


	.dropdown-content a {
		display: block;
		color: black;
		padding: 10px 3px;
		text-decoration:none;
		border-radius: 4pt;
		outline-style: ridge;
		outline-width: 1px;
		outline-color: #090;
		background-color: #CFC;
	}


	.dropdown-content a:hover {
		background-color: #a1a1a1;
	}


	.dropdown:hover .dropdown-content{
		display: block;
	}
	.panel-text{
		padding: 20px 20px;
		border-radius: 10pt;
		font-family: Times;
		background-color:#CCC;
		margin-right: -160px;
		margin-left: 150px
		
	}
	.outform {
		font-family:Times;
		font-size : 14px;
		padding: 10px 10px;
		margin-left: 600px;
		margin-right:50px;
	 
	}
	.seperate{
		margin-left:20px;
		margin-right:300px;
		padding: 50px 50px;
		display:block;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center; font-family: Cambria;">KAI QI AND AJITESH BANSAL</h1>
<div style="font-size: 10pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			
			<div class="dropdown">
			  <button class="dropbtn">Store</button>
			  <div class="dropdown-content">			
		        <a href="<c:url value='/jsps/store/storecreate.jsp'/>" target="_parent">Create Store</a> 
		        <a href="<c:url value='/jsps/store/storeread.jsp'/>" target="_parent">Read Store</a> 
		        <a href="<c:url value='/jsps/store/storeupdate.jsp'/>" target="_parent">Update Store</a> 
		        <a href="<c:url value='/jsps/store/storedelete.jsp'/>" target="_parent">Delete Store</a>
	           </div>
	          </div> 
	         <a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent" class = "panel-text">Login</a> &nbsp;
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent" class = "panel-text">Register</a> &nbsp;&nbsp; 
			 <a href="<c:url value='/jsps/initialize/init.jsp'/>" target="_parent" class = "panel-text">Initialize Database</a> &nbsp;    
		</c:when>
		<c:otherwise>
			<div style="font-size: 30px; text-transform: capitalize">Hello ${sessionScope.session_user.first_name }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			 </div>
			<ul>
			<li>
			<div class="dropdown">
			 
			  <button class="dropbtn">Store</button>
			  <div class="dropdown-content">
				<a href="<c:url value='/jsps/store/storecreate.jsp'/>" target="_parent">Create Store</a>  
		        <a href="<c:url value='/jsps/store/storeread.jsp'/>" target="_parent">Read Store</a> 
		        <a href="<c:url value='/jsps/store/storeupdate.jsp'/>" target="_parent">Update Store</a> 
		        <a href="<c:url value='/jsps/store/storedelete.jsp'/>" target="_parent">Delete Store</a>
			  </div>
			 </div>	
			 </li>
			 <li>
			 <div class="dropdown"> 
			 <button class="dropbtn">Employee</button>
			  <div class="dropdown-content">
				<a href="<c:url value='/jsps/employee/employeecreate.jsp'/>" target="_parent">Create Employee</a>  
		        <a href="<c:url value='/jsps/employee/employeeread.jsp'/>" target="_parent">Read Employee</a> 
		        <a href="<c:url value='/jsps/employee/employeeupdate.jsp'/>" target="_parent">Update Employee</a> 
		        <a href="<c:url value='/jsps/employee/employeedelete.jsp'/>" target="_parent">Delete Employee</a>
			 </div> 
			 </div>
			 </li>
			 <li>
			 <div class = "dropdown">
			 	<button class = "dropbtn">Manage Order</button>
			 		<div class="dropdown-content">
						<a href="<c:url value='/jsps/Order/ordercreate.jsp'/>" target="_parent">Create Order</a>  
				        <a href="<c:url value='/jsps/Order/orderread.jsp'/>" target="_parent">Read Order</a> 
				        <a href="<c:url value='/jsps/Order/orderupdate.jsp'/>" target="_parent">Update Order</a> 
				        <a href="<c:url value='/jsps/Order/orderdelete.jsp'/>" target="_parent">Delete Order</a>
					 </div> 
			 </div>
			 <li>
			 <div class = "dropdown">
			 	<button class = "dropbtn">Items to Donate</button>
			 		<div class="dropdown-content">
						<a href="<c:url value='/jsps/Item/itemcreate.jsp'/>" target="_parent">Create Item</a>  
				        <a href="<c:url value='/jsps/Item/itemread.jsp'/>" target="_parent">Read Item</a> 
				        <a href="<c:url value='/jsps/Item/itemupdate.jsp'/>" target="_parent">Update Item</a> 
				        <a href="<c:url value='/jsps/Item/itemdelete.jsp'/>" target="_parent">Delete Item</a>
					 </div> 
			 </div>
			 </li>&nbsp;&nbsp;&nbsp;&nbsp;
			 
			 
			<li><a href="<c:url value='/UserServletLogout'/>" target="_parent" class = "dropbtn">Log Out</a></li> &nbsp;&nbsp;
			<div class="seperate">
			<li><a href="<c:url value='/jsps/user/queries.jsp'/>" target="body" class="dropbtn">Query Result</a></li> &nbsp;&nbsp;
			
			<li><a href="<c:url value='/jsps/user/queries.jsp'/>" target="body" class="dropbtn">Delete Database</a></li> &nbsp;&nbsp;
			</div>
			
			
			  
			 
			</ul>
			
			 
			 
		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

