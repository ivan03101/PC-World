<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
    import = "edu.fau.group3.model.Login_Table"
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><!-- values given at login page are taken here and checks if the valid details are not -->
	<%
		String username = request.getParameter("email");
		String password = request.getParameter("psw");
				
		int userId = DBUtil.checkUsernameAndPassword(username, password);
		if (userId >= 0) {
			//if the user is valid, then this block executes and WE ARE KEEPING THE USER IN A SESSION
			session.setAttribute("sessionID", userId);//THIS IS HOW WE DECLARE THE USER IN A SESSION
			response.sendRedirect("HomePage.jsp"); //AND WE REDIRECTED TO HOME PAGE
		}
		else {
			//IF THE USER IS NOT AUTHORIZED THEN AGAIN HE WILL BE REDIRECTED TO THE SAME LOGIN PAGE
			response.sendRedirect("Login.jsp");
		}
	%>

</body>
</html>