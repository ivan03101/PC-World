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
// variables that bring in the id from the search page
String ID = request.getParameter("ID");
int id = Integer.parseInt(ID);

// variable for the delete function
boolean didDelete = DBUtil.deleteUser(id);

// if statement that reads the userid then executes delete function
if (didDelete) {
	
	out.print("<h1>User Deleted</h1>");
}

%>

<a href="Login.jsp">Back to Login</a>

</body>
</html>