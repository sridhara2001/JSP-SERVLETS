<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		request.setAttribute("message", "Good Day in request");
		%>
		
		<%
		pageContext.setAttribute("message", "Welcome");
		request.setAttribute("message", "Great Day in request");
		session.setAttribute("message", "Great Day in session");
		application.setAttribute("message", "Great Day in application");
		%>
		
		<h2>Using Scripting</h2>
		<%
		String msg1 = (String)request.getAttribute("message");
		String msg2 = (String)session.getAttribute("message");
		String msg3 = (String)application.getAttribute("message");
		%>
		<%=msg1 %><br>
		<%=msg2 %><br>
		<%=msg3 %><br>
		
		<h2>Using EL</h2>
		${message }<br>
		${requestScope.message }<br>
		${sessionScope.message }<br>
		${applicationScope.message }
	</body>
</html>