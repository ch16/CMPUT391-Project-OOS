import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;

public class Asn2Sample extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {

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


		String SQLStatement = request.getParameter("SQLStatement");
		response.setContentType("text/html");

		String printString = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
			"Transitional//EN\">\n" +
			"<HTML>\n" +
			"<HEAD><TITLE>Asn2Sample</TITLE></HEAD>\n" +
			"<BODY>\n" +
			"<H1>" +
			SQLStatement + "<TABLE BORDER=3> ";
		
		Connection m_con = DriverManager.getConnection(url, "chen1", "117130Abc");
             	Statement stmt = m_con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
             	ResultSet rset = stmt.executeQuery(SQLStatement);
		

		while(rset.next())
		{
			printString = printString + "<TR> <TD>Values</TD> <TD>" + rset.getString(1) 
			+"</TD> <TD>"+ rset.getInt(2) + "</TD></TR>";
		}

		printString = printString +"</TABLE>"+ "</H1>\n" + "</BODY></HTML>";


		m_con.close();
		stmt.close();
		PrintWriter out = response.getWriter();
 		out.println(printString);

    } catch(SQLException ex) {

              System.err.println("SQLException: " +
              ex.getMessage());


PrintWriter out = response.getWriter();
 		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
			"Transitional//EN\">\n" +
			"<HTML>\n" +
			"<HEAD><TITLE>Asn2Sample</TITLE></HEAD>\n" +
			"<BODY>\n" +
			"<H1>" +"WRONG"+ "</H1>\n" + "</BODY></HTML>");

       }
	}
	
}
