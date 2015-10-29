<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h1>Ocean Observation System Login</h1>
	<form action="Validation.jsp" method="post">
		Username: <input type="text" name="username"> <br /> <br />
		Password: <input type="text" name="password"> <br /> <br />
		<button type="reset">Reset</button>
		<input type="submit" name="submit" value="Log In">

	</form>

</body>
</html>