<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	</head>
	<body>
		<form action="doctorServlet" method="get">
			Doctor Name : <input type="text" name="doctorName"><br>
			Doctor ID : <input type="text" name="doctorId"><br>
			Doctor Speciality
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
			Doctor Fees : <input type="text" name="doctorFees"><br>
			Doctor Ratings : <input type="text" name="doctorRatings"><br>
			Doctor Experience : <input type="text" name="doctorExperience"><br>
			<input type="submit">
		</form>
	</body>
</html>