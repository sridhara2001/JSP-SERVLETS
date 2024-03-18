<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorhandler.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Welcome to JSP</h1>
		<%
			String name = "Sridhar";
			out.print("Welcome "+name+"<br>");
			
			int x =10, y=20;
			out.print("Sum "+(x+y)+"<br>");
		%>
		<%= "Sum1 "+(x+y) %>
		<%int counter=1; %>
		<%=counter++ %>
		<% int a=10/0; %>
		
	</body>
</html>