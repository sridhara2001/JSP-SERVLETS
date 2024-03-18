<%@page import="com.employeeapp.service.Employee"%>
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
			Employee employee = (Employee)  session.getAttribute("employee");
			out.print("Employee Name : "+employee.getEmployeeName()+"<br>");
			out.print("Employee Id : "+employee.getEmployeeId()+"<br>");
			out.print("Employee Salary : "+employee.getSalary()+"<br>");
			out.print("Employee City : "+employee.getCity()+"<br>");
		%>
	</body>
</html>