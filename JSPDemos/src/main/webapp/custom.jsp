<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% request.setAttribute("message", "Great Day"); %>
	<c:out value="Today is a ${message }"></c:out> <br>
	
	<c:set var="msg" value="Great Day" scope="session"></c:set>
	${sessionScope.msg } <br>
	
	<% 
	List<String> fruits = Arrays.asList("apple","guava","mango","banana");
	session.setAttribute("fruits", fruits);
	%>
	<h2>Using EL</h2>
	${fruits }
	
	<h2>Using c:forEach</h2>
	<c:forEach items="${fruits }" var="fruit" step="2">${fruit}<br></c:forEach>
</body>
</html>