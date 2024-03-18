<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>User Details</h2>
		<%
			String employeeName = (String)request.getAttribute("employeeName");
			String city = (String)request.getAttribute("city");
			double salary = (Double)request.getAttribute("salary");
			String course = (String)request.getAttribute("course");
			Long mobile = (Long)request.getAttribute("mobileNum");
			String[] hobbies = (String[])request.getAttribute("hobbies");
			
			out.println("Name : "+employeeName+"<br>");
			out.println("City : "+city+"<br>");
			out.println("Salary : "+salary+"<br>");
			out.println("Selected Course : "+course+"<br>");
			out.println("Mobile : "+mobile+"<br>");
			out.println("Hobbies : "+"<br>");
			for(String hobby : hobbies){
				out.println("Hobby : "+hobby.toUpperCase()+"<br>");
			} 
		%>
	</body>
</html>