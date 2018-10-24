<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@page import="com.zwq.cart.service.ItemsService"%>
<%@ page import="com.zwq.cart.domain.Items"%>
<%@ page import="com.zwq.user.domain.User"%>
<%@ page import = "com.zwq.cart.domain.CartItems" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'details.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/detail/detail.css">
<link rel="stylesheet" type="text/css" href="css/mainpage/mainpage.css">
<!-- 导入css文件 -->
<link rel="stylesheet" type="text/css"
	href="<c:url value = '/css/user/updatePassword.css'/>">
<!-- 导入JQuery -->
<script type="text/javascript" src="/WebCourse/js/jquery-3.2.1.min.js"></script>
<!-- 导入JS文件 -->
<script type="text/javascript"
	src="<c:url value = '/js/user/updatePassword.js'/>"></script>
</head>
<body>
	<div class="container">
		<div id="title">
			<h1>欢迎来到购物商城</h1>
			<div id="menu">
				<%
				User user = (User) request.getSession().getAttribute("sessionUser");
				if (user != null) {
					out.print("欢迎" + user.getLoginname() + "用户!");
			%>

				| <a id="Home" href="ItemsServlet?method=returnHome">主页</a>
				| <a id="cart" href="CartItemsServlet?method=myCart">我的购物车</a> 
				| <a id="updatePassword" href="jsps/user/updatepassword.jsp?user=<%=request.getSession().getAttribute("sessionUser")%>">修改密码</a>
				| <a id="quit" href="quit.do">退出</a>
				<%	
				} else {
			%>
				<a href="jsps/user/login.jsp">登录</a> 
			  | <a href="jsps/user/regist.jsp">注册</a>
				<%
				}
			%>



			</div>
		</div>
<div id="main">