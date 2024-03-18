<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style>
    	table,th,td{
	        border: 2px solid blue;
	        border-collapse: collapse;
	        padding: 10px;
	        text-align: center;
        }
        a{
        	text-decoration: none;
        	text-transform: uppercase;
        }
       </style>
	</head>
	<body>
		<table>
			<tr>
				<td>Search By Speciality</td>
				<td> <input type="text" name="search"> </td>
				<td> <input type="submit" value="search"> </td>
			</tr>
			<tr>
				<td colspan="3"> <a href="login.jsp" target="_blank">Admin</a> </td>
			</tr>
		</table>
	</body>
</html>