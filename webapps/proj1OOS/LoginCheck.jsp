<%
	if(session.getAttribute("login") == null 
		|| session.getAttribute("login") == ""){
		String redirectURL = "Login.jsp";
	    response.sendRedirect(redirectURL);
	}
%>