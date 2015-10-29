package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Administrator_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<script src=\"jquery-1.11.3.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"style.js\" type=\"text/javascript\"></script>\n");
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>Administrator</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t");

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
	
      out.write("\n");
      out.write("\t<h1>Administrator Page</h1>\n");
      out.write("\t<h2>Sensor Management</h2>\n");
      out.write("\t<div id=\"add_sensor_btn\">Add New Sensor</div>\n");
      out.write("\t<div id=\"add_sensor_panel\">\n");
      out.write("\t\t<form action=\"\" method=\"post\">\n");
      out.write("\t\t\t<fieldset>\n");
      out.write("\t\t\t\t<legend>Sensor Information:</legend>\n");
      out.write("\t\t\t\tLocation: <input type=\"text\" name=\"location\"> <br /> <br />\n");
      out.write("\t\t\t\tType: <input type=\"radio\" name=\"types\" value=\"a\"> Audio</input> <input\n");
      out.write("\t\t\t\t\ttype=\"radio\" name=\"types\" value=\"i\"> Image</input> <input\n");
      out.write("\t\t\t\t\ttype=\"radio\" name=\"types\" value=\"s\"> Sound</input> <br /> <br />\n");
      out.write("\t\t\t\tDescription: <input type=\"text\" name=\"description\"> <br />\n");
      out.write("\t\t\t\t<br />\n");
      out.write("\t\t\t\t<button type=\"reset\">Reset</button>\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"submit\" value=\"Submit\">\n");
      out.write("\t\t\t</fieldset>\n");
      out.write("\t\t</form>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"del_sensor_btn\">Delete Sensor</div>\n");
      out.write("\t<div id=\"del_sensor_panel\">Delete sensor</div>\n");
      out.write("\t<h2>User Management</h2>\n");
      out.write("\t<div id=\"add_user_btn\">Add New User</div>\n");
      out.write("\t<div id=\"add_user_panel\">\n");
      out.write("\t\t<form action=\"\" method=\"post\">\n");
      out.write("\t\t\t<fieldset>\n");
      out.write("\t\t\t\t<legend>New User Information:</legend>\n");
      out.write("\t\t\t\tUsername: <input type=\"text\" name=\"username\"> <br /> <br />\n");
      out.write("\t\t\t\tPassword: <input type=\"text\" name=\"password\"> <br /> <br />\n");
      out.write("\t\t\t\tRole: <input type=\"radio\" name=\"roles\" value=\"a\">\n");
      out.write("\t\t\t\tAdministrator</input> <input type=\"radio\" name=\"roles\" value=\"d\">\n");
      out.write("\t\t\t\tData Curator</input> <input type=\"radio\" name=\"roles\" value=\"s\">\n");
      out.write("\t\t\t\tScientist</input> <br /> <br />\n");
      out.write("\t\t\t\t<button type=\"reset\">Reset</button>\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"submit\" value=\"submit\">\n");
      out.write("\t\t\t</fieldset>\n");
      out.write("\t\t</form>\n");
      out.write("\t\t<form action=\"\" method=\"post\">\n");
      out.write("\t\t\t<fieldset>\n");
      out.write("\t\t\t\t<legend>New Person Information:</legend>\n");
      out.write("\t\t\t\tFirstname: <input type=\"text\" name=\"firstname\"> <br />\n");
      out.write("\t\t\t\t<br /> Lastname: <input type=\"text\" name=\"lastname\"> <br />\n");
      out.write("\t\t\t\t<br /> Address: <input type=\"text\" name=\"address\"> <br />\n");
      out.write("\t\t\t\t<br /> Email: <input type=\"text\" name=\"email\"> <br /> <br />\n");
      out.write("\t\t\t\tPhone: <input type=\"text\" name=\"phone\"> <br /> <br />\n");
      out.write("\t\t\t\t<button type=\"reset\">Reset</button>\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"submit\" value=\"Submit\">\n");
      out.write("\t\t\t</fieldset>\n");
      out.write("\t\t</form>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"edit_user_btn\">Manage User</div>\n");
      out.write("\t<div id=\"edit_user_panel\">Edit user</div>\n");
      out.write("\t<div id=\"del_user_btn\">Delete User</div>\n");
      out.write("\t<div id=\"del_user_panel\">Delete user</div>\n");
      out.write("\t<br />\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
