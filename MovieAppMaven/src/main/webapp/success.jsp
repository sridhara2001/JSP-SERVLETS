<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>User Details</h2>
		<%
			out.println("Session Id : "+session.getId()+"<br>");
			out.println("Session Inactive Time : "+session.getMaxInactiveInterval()+"<br>");
			String username =(String) session.getAttribute("username");
			session.setMaxInactiveInterval(1);
			out.print("Welcome "+username);
		%>
		
		<form action="movieServlet">
			Select Category :
			<select name="language">
				<option>--Select language--</option>
				<option value="Kannada">Kannada</option>
				<option value="Hindi">Hindi</option>
				<option value="Tamil">Tamil</option>
				<option value="Telugu">Telugu</option>
				<option value="English">English</option>
			</select><br>
			<input type="submit">
		</form>
	</body>
</html>