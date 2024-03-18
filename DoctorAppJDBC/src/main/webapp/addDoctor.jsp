<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	align-content: center;
	width: 400px;
	height: 200px;
	border: 1px solid black;
}
.submit:hover {
	background-color: green;
	transition: 2ms;
	cursor: pointer;
	color: white;
}
</style>
</head>
<body>
	<form action="addServlet">
		Enter Doctor Name :
		<input type="text" name="doctorName" required> <br>
		Enter Doctor Speciality :
		<select name="speciality">
				<option>----Select Course----</option>
				<option value="Cardiologist">Cardiologist</option>
				<option value="Neurologist">Neurologist</option>
				<option value="Dermatologist">Dermatologist</option>
				<option value="Oncologist">Oncologist</option>
				<option value="Pediatrician">Pediatrician</option>
				<option value="Gynecologist">Gynecologist</option>
				<option value="Psychiatrist">Psychiatrist</option>
			</select><br>
		Enter Doctor Fees :
		<input type="number" name="doctorFees" required> <br>
		Enter Doctor Ratings :
		<input type="number" name="ratings" required><br>
		Enter Doctor Experience :
		<input type="number" name="experience" required><br>
		<input type="submit" name="Submit" class="submit">
	</form>
</body>
</html>