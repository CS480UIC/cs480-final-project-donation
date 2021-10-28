<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script>
  	function validate(){
  		
  		if(document.getElementById('item_id').value == "" && document.getElementById('item_name').value == ""){
  			alert("Both Fields are empty");
  			event.preventDefault()
  		} else if (document.getElementById('item_id').value !== "" && document.getElementById('item_name').value !== ""){
  			alert("Fill only one of the fields");
  			event.preventDefault()
  		}
  	}
  </script>
    
    <title>Delete Item</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../stylesheet/styles.css">


  </head>
  
  <body>
  <h1>Delete Item</h1>
<form id = "deleteForm" action="<c:url value='/Entity1ServletDelete'/>" method="post">
	<input type="hidden" name="method" value="search"/>
	Delete Item By ID:<input type="text" id="item_id" value="${form.item_id}"/>
	<span style="color: red; font-weight: 900">${errors.store_id }</span>
	<br/>
	<input type="hidden" name="method" value="search"/>
	Delete Item By Name:<input type="text" id="item_name" value="${form.item_name}"/>
	<span style="color: red; font-weight: 900">${errors.store_id }</span>
	<br/>
	<input type="submit" value="Delete Item" onclick="validate()"/>
</form>
  </body>
</html>
