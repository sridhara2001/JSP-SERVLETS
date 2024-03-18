<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="register" method="get">
			Enter Name <input type="text" name="employeeName"> <br>
			Enter City <input type="text" name="city"><br>
			Enter Salary <input type="text" name="salary"><br>
			Enter Mobile <input type="tel" name="mobile"><br>
			<h3>Select Course</h3>
			<select name="course">
				<option value="Java">Java</option>
				<option value="Spring">Spring</option>
				<option value="Html">Html</option>
			</select><br>
			<h3>Hobbies</h3>
			<input type="checkbox" name="hobbies" value="sports">Sports
			<input type="checkbox" name="hobbies" value="music">Music
			<input type="checkbox" name="hobbies" value="dance">Dance
			<input type="checkbox" name="hobbies" value="travel">Travel
			<br>
			<input type="submit">
		</form>
	</body>
</html>