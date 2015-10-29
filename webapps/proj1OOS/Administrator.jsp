<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="jquery-1.11.3.js" type="text/javascript"></script>
<script src="style.js" type="text/javascript"></script>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
</head>
<body>
	<%
		if (!session.getAttribute("role").equals("a")) {
			response.sendRedirect("Restriction.html");
		}
	
		String url = "jdbc:oracle:thin:@localhost:1525:CRS";
		String driverName = "oracle.jdbc.driver.OracleDriver";
		try {
			Class drvClass = Class.forName(driverName);
			DriverManager.registerDriver((Driver) drvClass.newInstance());
			Connection m_con = DriverManager.getConnection(url, "chen1", "117130Abc");
			Statement stmt = m_con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		} catch (Exception e) {
			System.err.print("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		}
	%>
	<h1>Administrator Page</h1>
	<h2>Sensor Management</h2>
	<div id="add_sensor_btn">Add New Sensor</div>
	<div id="add_sensor_panel">
		<form action="" method="post">
			<fieldset>
				<legend>Sensor Information:</legend>
				Location: <input type="text" name="location"> <br /> <br />
				Type: <input type="radio" name="types" value="a"> Audio</input> <input
					type="radio" name="types" value="i"> Image</input> <input
					type="radio" name="types" value="s"> Sound</input> <br /> <br />
				Description: <input type="text" name="description"> <br />
				<br />
				<button type="reset">Reset</button>
				<input type="submit" name="submit" value="Submit">
			</fieldset>
		</form>
	</div>
	<div id="del_sensor_btn">Delete Sensor</div>
	<div id="del_sensor_panel">Delete sensor</div>
	<h2>User Management</h2>
	<div id="add_user_btn">Add New User</div>
	<div id="add_user_panel">
		<form action="" method="post">
			<fieldset>
				<legend>New User Information:</legend>
				Username: <input type="text" name="username"> <br /> <br />
				Password: <input type="text" name="password"> <br /> <br />
				Role: <input type="radio" name="roles" value="a">
				Administrator</input> <input type="radio" name="roles" value="d">
				Data Curator</input> <input type="radio" name="roles" value="s">
				Scientist</input> <br /> <br />
				<button type="reset">Reset</button>
				<input type="submit" name="submit" value="submit">
			</fieldset>
		</form>
		<form action="" method="post">
			<fieldset>
				<legend>New Person Information:</legend>
				Firstname: <input type="text" name="firstname"> <br />
				<br /> Lastname: <input type="text" name="lastname"> <br />
				<br /> Address: <input type="text" name="address"> <br />
				<br /> Email: <input type="text" name="email"> <br /> <br />
				Phone: <input type="text" name="phone"> <br /> <br />
				<button type="reset">Reset</button>
				<input type="submit" name="submit" value="Submit">
			</fieldset>
		</form>
	</div>
	<div id="edit_user_btn">Manage User</div>
	<div id="edit_user_panel">Edit user</div>
	<div id="del_user_btn">Delete User</div>
	<div id="del_user_panel">Delete user</div>
	<br />
</body>
</html>