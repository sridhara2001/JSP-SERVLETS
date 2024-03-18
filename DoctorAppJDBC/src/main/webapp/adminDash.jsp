<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String username =(String) session.getAttribute("username");
			out.print("Welcome "+username.toUpperCase()+"<br>");
		%>
		
		<a href="addDoctor.jsp" target="_blank">Add Doctor</a>
        <a href="editDoctor.jsp" target="_blank">Update Doctor</a>
        <a href="deleteDoctor.jsp" target="_blank">Delete Doctor</a>
	</body>
</html>