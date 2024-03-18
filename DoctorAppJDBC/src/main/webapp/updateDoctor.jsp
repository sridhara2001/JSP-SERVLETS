<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="updateServlet">
		Enter Doctor Name :
		<input type="text" name="doctorName" value="${doctor.doctorName }" readonly="readonly"> <br>
		Enter Doctor Speciality :
		<input type="text" name="speciality" value="${doctor.speciality }" readonly="readonly"><br>
		Enter Doctor Fees :
		<input type="number" name="doctorFees" value="${doctor.fees }"> <br>
		Enter Doctor Ratings :
		<input type="number" name="ratings" value="${doctor.ratings }" readonly="readonly"><br>
		Enter Doctor Experience :
		<input type="number" name="experience" value="${doctor.experience }" readonly="readonly"><br>
		<input type="submit" name="Submit" class="submit">
	</form>
</body>
</html>