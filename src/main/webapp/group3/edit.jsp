<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	a {
		text-decoration: none;
		
	}
	label {
		display: inline-block;
		width: 100px;
	}
	div {
		padding:5px;
	}	
</style>

</head>
<body>

	<p>Search User Id <input type="text" name="userId" id="userId">
	<input type="button" value="Search" onclick="searchUser()"></p>
	
	
</body>
<script type="text/javascript">
	// function that searches the user by id then passes it on to the search user page
	function searchUser(){
		var id = document.getElementById("userId").value;
		console.log('ID = ' + id);
		window.open("search.jsp?ID=" + id, "_self");	
	}


</script>
</html>