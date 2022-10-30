<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.model.*"
    import = "edu.fau.group3.util.*"

    import = "java.time.LocalDate"
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	// variables used to get information from the register page 
	String username = request.getParameter("email");
	String password = request.getParameter("psw");
	String email = request.getParameter("emailAddress");
	//int Register_ID = Integer.parseInt(request.getParameter("ID"));
	//LocalDate UserDOB = LocalDate.parse(DOB);
	
	// creating a variable for the login table
	Login_Table e = new Login_Table (username, password, email);
	
	// variable to store create user
	boolean didSave = DBUtil.createUser(e);
	
	// if else statement that checks to see if user is creating depending on parameters
	if (didSave) {
		out.print("<h2> User Created!</h2>");
		
		out.print("<h2> User's Username: "+ e.getUserName());
		
	}
	
	else {
		out.print("<h2>Error creating User, Contact helpdesk</h2>");
	}
		
	
	
	
	%>
	
	<br>
	
	<br>

	<a href="Login.jsp">Sign in</a>
	
</body>
</html>