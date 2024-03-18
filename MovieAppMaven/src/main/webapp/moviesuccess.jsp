<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	<h2>Movies</h2>
		<%
			out.println("Session Id : "+session.getId()+"<br>");
			out.println("Session Inactive Time : "+session.getMaxInactiveInterval()+"<br>");
			String username =(String) session.getAttribute("username");
			out.print("Welcome "+username+"<br>");
			String language =(String) request.getAttribute("language");
			List<String> movies =(List) request.getAttribute("movies");
			out.print("Selected Language is "+language+"<br>");
			out.print(language+" Movies are"+"<br>");
			for(String movie : movies){
				out.print(movie+" ");
			}
		%>
	</body>
</html>