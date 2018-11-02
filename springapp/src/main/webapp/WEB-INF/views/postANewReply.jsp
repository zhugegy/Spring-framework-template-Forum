<%@ include file="/WEB-INF/views/include.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title><fmt:message key="forum.postANewReply.title" /></title>
	</head>
	<body>
		<a href=<fmt:message key="forum.homepage" />><IMG SRC="https://s1.ax1x.com/2018/10/30/i22J6P.jpg"></a>
		<a href=<fmt:message key="user.homepage" />>Account</a>
		|
		<a href=<fmt:message key="forum.homepage" />>Forum</a>
		|
		<a href=<fmt:message key="shop.homepage" />>Shop</a>
		|
		<a href=<fmt:message key="cart.homepage" />>Cart</a>
		|
		<a href=<fmt:message key="help.homepage" />>Help</a>
		|
		<h1>
			<fmt:message key="forum.postANewReply.heading" />
		</h1>
		<p>
			<fmt:message key="forum.postANewReply.greeting" />
			<c:out value="${model.now}" />
		</p>
		<form action="postANewReply" method="post">
			Your name: <input type="text" name="author" />
			<br>
			Content:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <textarea type="text" name="content" rows="6" cols="62"/></textarea>
			<br>
			<br>
			<input type="hidden" name="custId" value="${model.topicid}">
			
			<input type="submit" value="Reply"/>
			<input type="button" value="Back" onclick="javascript:history.back(-1);" />
		</form>
	</body>
</html>