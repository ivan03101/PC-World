<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.*"
    import = "edu.fau.group3.model.*"
    import = "java.time.LocalDate"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="import = "edu.fau.group3.util.*"text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<script type="text/javascript">
		var answer = confirm('do you want to update the information?');
		
		// loop that reads the info edited and passes it to the database
		if (answer){
			<%
			Integer id = Integer.parseInt(request.getParameter("userId"));
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			String Email = request.getParameter("Email");
			
			// variable that brings in the login table
			Login_Table e = new Login_Table(userName, password, Email);
			// sets id so that page can identify the user
			e.setUserId(id);
			boolean didSave = DBUtil.updateUser(e);
			// if else statement that reads if changes were done then saves it
			if (didSave){
				%>
				alert("User updated");
				window.location.href = "search.jsp?ID=" + <%=id%>;
				<%	
			}
			// if no changes are done a pop up window appears				
			else {
				%>
				alert("no changes were done!")
				window.location.href = "search.jsp?ID=" +  <%=id%>;
			<%}
			%>
		}
		else if (answer ==false) {
			alert("no changes were done!")
			window.location.href = "search.jsp?ID=" +  <%=id%>;
		}
	</script>

</body>
</html>