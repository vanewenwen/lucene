<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    欢迎到男人的天堂东莞，有无数的MM任你选!最低价一晚2000<br>
  <!--   <img alt="meivn" src="/static/image/mv.png" > -->
    <form action="/saveuser.jhtml" method="post" enctype="multipart/form-data" >
    	色狼名:<input name="username"><br>
    	年纪: <input name="age"><br>
    	图片:<input type="file" name="filename"><br>
    	<input type="submit" value="提交">
    </form>
    <c:forEach var="user" items="${userlist}">
    	<div>${user.username }<img src="${user.headurl}" width="200px;" height="200px;"/></div>
    </c:forEach>
  </body>
</html>
