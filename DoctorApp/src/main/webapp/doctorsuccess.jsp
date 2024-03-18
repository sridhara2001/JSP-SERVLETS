<%@page import="com.doctorapp.model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>Doctor Details</h2>
		<%
			Doctor doctor = (Doctor) request.getAttribute("doctor");
		out.println("Doctor Name : "+doctor.getDoctorName()+"<br>");
		out.println("Doctor Id : "+doctor.getDoctorId()+"<br>");
		out.println("Doctor Speciality : "+doctor.getSpeciality()+"<br>");
		out.println("Doctor Fees : "+doctor.getFees()+"<br>");
		out.println("Doctor Ratings : "+doctor.getRatings()+"<br>");
		out.println("Doctor Experience : "+doctor.getExperience()+"<br>");
		%>
	</body>
</html>