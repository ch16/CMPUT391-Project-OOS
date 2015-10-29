<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="jquery-1.11.3.js" type="text/javascript"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
</head>
<body>
	<%
		if (!session.getAttribute("role").equals("a")) {
			response.sendRedirect("Restriction.html");
		}
	%>
	<h1>Admnistrator Page</h1>
<h2>Sensor Management</h2>

<h2>User Management</h2>

</body>
</html>