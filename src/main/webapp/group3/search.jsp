<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="edu.fau.group3.model.Login_Table"
    import ="edu.fau.group3.util.*"
    import = "java.util.ArrayList"
    import = "java.util.List"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
        h1{
            font-family:fantasy;
            color:black;
        }

</style>
</head>
<body>
    <%
    // variables that allow the information from the util to be implemented 
    String ID = request.getParameter("ID");
    int id = Integer.parseInt(ID);
    DBUtil util = new DBUtil();
    ArrayList<Login_Table> myList = new ArrayList<Login_Table>();
    List<Login_Table> userList = DBUtil.getAllLogin();
  
    Login_Table e = DBUtil.getLoginById(id);
      
        
       
        if(ID == null) {
            out.print("<h1>User not found!</h1>");
        }
        else {
        	int userId = Integer.parseInt(ID);
        	
        	Login_Table user = DBUtil.getLoginById(id);
            %>
            <form action="save.jsp" id="frm1" name="frm1" method="post">
            <h1>User Information</h1>
            <div id="div1">
				<input type="hidden" id="userId" name="userId" value=<%=e.getUserId() %>>
			</div>									
									
            <div id="div2">
              <input type="text" id="userName" name="userName" value=" <%out.print(e.getUserName()); %>" disabled><br>
              </div>
              <div id="div3">
           <input type="text" id="password" name="password" value=" <%out.print(e.getPassWord()); %>" disabled><br>
            </div>
            <div id="div4">
            <input type="text" id="Email" name="Email" value=" <%out.print(e.getEmail()); %>" disabled><br>
            </div>
           
       
            <%} %>
            <input type="button" value="Edit user" onclick="enableForm()"/>
			<input type="submit" value="Save user"/>
			<input type="button" value="Delete user" onclick="deleteUser()"/>
			
			<br>
			<br>
			
			<a href="Login.jsp">Back to Login</a>

</form>
</body>
<script>
// function that enables the form to be edited 
function enableForm(){
	var inputs = document.getElementsByTagName("input");
	// loop that allows the user to enable form and edit info
	for(var i=0; i < inputs.length; i++){
		inputs[i].disabled = false;
		console.log("inside loop");
		}
	var selects = document.getElementsByTagName("select");
	// loop that reads when edit button is selected and enables the form
	for(var i=0; i < selects.length; i++){
		selects[i].disabled=false;
		}
	
	}

</script>

<script type="text/javascript">
	// function that passes the id from this page to the delete user page and deletes the user
	function deleteUser(){
		var id = document.getElementById("userId").value;
		console.log('ID = ' + id);
		window.open("DeleteUser.jsp?ID=" + id, "_self");
	}
</script>	
</html>


