<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="employeeServlet" method="get">
			Enter Name <input type="text" name="employeeName"> <br>
			Enter employeeId <input type="number" name="employeeId"> <br>
			Enter Salary <input type="text" name="salary"><br>
			Enter City <input type="text" name="city"><br>
			<h3>Select Course</h3>
			<select name="language">
				<option value="Java">Java</option>
				<option value="Spring">Spring</option>
				<option value="Cloud">Cloud</option>
				<option value="Node">Node</option>
			</select><br>
			<input type="submit">
		</form>
	</body>
</html>