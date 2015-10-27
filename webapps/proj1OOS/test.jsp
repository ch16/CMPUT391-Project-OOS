<html>
<head></head>
<body>
		<%@page import ="java.sql.*"%>

		<%
		String url = "jdbc:oracle:thin:@gwynne.cs.ualberta.ca:1521:CRS";
		String driverName = "oracle.jdbc.driver.OracleDriver";
		try
       		{
			Class drvClass = Class.forName(driverName); 
			DriverManager.registerDriver((Driver)
              		drvClass.newInstance());
 
		} catch(Exception e)
      		{

              		System.err.print("ClassNotFoundException: ");
              		System.err.println(e.getMessage());

       		}

		try
	        {

			String SQLStatement = request.getParameter("test");
			Connection m_con = DriverManager.getConnection(url, "chen1", "117130Abc");
             		Statement stmt = m_con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
             		ResultSet rset = stmt.executeQuery(SQLStatement);
			ResultSetMetaData rsetMetaData=rset.getMetaData();
			String printString = "";

			while(rset.next()){
			        printString = printString + " " + rset.getObject(1).toString() + " "  + rset.getObject(2).toString() + " " + rset.getObject(3).toString() + " " + rset.getObject(4).toString() + " " + rset.getObject(5).toString() + " <br/>" ;
                        }

			out.println("The Result of SQL Statement: <br/>" + printString);

		}catch(SQLException ex) {

              		System.err.println("SQLException: " +
              		ex.getMessage());
			out.println("Invalid Query");
		}

		%>


</body>
</html>
