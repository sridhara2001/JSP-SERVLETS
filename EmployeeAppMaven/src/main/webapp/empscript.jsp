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
		<%Employee employee = (Employee) session.getAttribute("employee");%>
		<%="Welcome " + employee.getEmployeeName()%><br>
		<%="Employee Id " + employee.getEmployeeId()%><br>
		<%="City " + employee.getCity()%><br>
		<%="Salary "+employee.getSalary() %>
	</body>
</html>