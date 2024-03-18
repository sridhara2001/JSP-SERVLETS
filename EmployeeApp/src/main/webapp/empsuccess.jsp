<%@page import="com.employeeapp.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>Employee Details</h2>
		<%
			Employee employee = (Employee) request.getAttribute("employee");
			out.println("Welcome "+employee.getEmployeeName()+"<br>");
			out.println("City : "+employee.getCity()+"<br>");
			out.println("Employee ID : "+employee.getEmployeeId()+"<br>");
			out.println("Salary : "+employee.getSalary()+"<br>");
			out.println("Course : "+employee.getCourse()+"<br>");
		%>
	</body>
</html>