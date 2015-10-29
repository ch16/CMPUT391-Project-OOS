<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%

		String url = "jdbc:oracle:thin:@gwynne.cs.ualberta.ca:1521:CRS";
		String driverName = "oracle.jdbc.driver.OracleDriver";
		try {
			Class drvClass = Class.forName(driverName);
			DriverManager.registerDriver((Driver) drvClass.newInstance());

		} catch (Exception e) {
			System.err.print("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		}
		try {
			Connection m_con = DriverManager.getConnection(url, "chen1", "117130Abc");
			Statement stmt = m_con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			String query = "SELECT * FROM users WHERE user_name = '" + username
					+ "' AND password = '" + password + "'";
			ResultSet rset = stmt.executeQuery(query);			
			
			String printString = "";
			
			if(!rset.next()){
				printString = "Username and password do not match.";
			} else {
				printString = "Login successful... ";
				String role = rset.getObject("ROLE").toString();
				
				// Set the session
				session.setAttribute("role", role);
				session.setAttribute("login", true);
				if(role.equals("a")) {
					response.sendRedirect("Administrator.jsp");
				} else if (role.equals("d")){
					response.sendRedirect("DataCurator.jsp");
				} else {
					response.sendRedirect("Scientiest.jsp");
				}
			}
			out.println(printString);
		} catch (SQLException ex) {
			out.println("Invalid Query");
		}
	%>
</body>
</html>