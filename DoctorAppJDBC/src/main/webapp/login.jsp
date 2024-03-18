<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
	border: 2px solid blue;
	border-collapse: collapse;
	padding: 10px;
	text-align: center;
}
</style>
</head>
<body>
	<fieldset>
		<legend align="left">Admin Page</legend>
		<center>
			<form action="loginServlet" method="get">
				<table>
					<tr>
						<td>Enter Username</td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td>Enter Password</td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" name="Login"></td>
					</tr>
				</table>
			</form>
		</center>
	</fieldset>
</body>
</html>