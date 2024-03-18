<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="employeeServlet">
			Employee Name : <input type="text" name="employeeName" required="required"><br>
			Employee ID : <input type="text" name="employeeId" required="required"><br>
			Employee Salary : <input type="text" name="employeeSalary" required="required"><br>
			Employee City : <input type="text" name="employeeCity" required="required"><br>
			<input type="submit">
		</form>
	</body>
</html>