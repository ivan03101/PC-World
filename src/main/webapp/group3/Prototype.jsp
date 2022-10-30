<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
  	import = "edu.fau.group3.model.Login_Table"
    %>
<!DOCTYPE html>
<html>
   <head>
        <title> about us </title>
        <link rel="stylesheet" href="assignmentstyles2.css" type="text/css">
        <link rel="stylesheet" href="layout.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel=stylesheet href="assignmentstyles3.css" type="text/css">
    <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script><script async src='/cdn-cgi/bm/cv/669835187/api.js'></script>
    
    <style type="text/css">
    	h1 {
    		color: white;
    	}
    	
  		#container {
            width: 100%;
            height: 100%;
            display: table;
           	border-top-color: black;
            border-style:solid;
            border-width:5px;      
       	}
    </style>
    </head>
    <div id="header">
            <img src="images/logoblack.jpg" alt="logo" width="140" height="140" style="float: left">
            <h1>PCworld.com</h1>
            
    
        </div>
        
    <body>
	<%
		    // AUTHENTICATION
		    Integer uid = (Integer)session.getAttribute("sessionID");
		    if (uid == null) {
		        %>
		            <jsp:forward page="Login.jsp"/>
		        <% 
		    }// END AUTHENTICATION
		
		Login_Table user = DBUtil.getLoginById(uid);
		String username = user.getUserName();
		%>
    
  <!-- <button class="btn1" onclick="registerPage.html" ><span>Register </span></button> -->

		<div id= Username class="btn1" style= "float:left">
		
		<%="Welcome, " + username %>
		
		</div>
		
		   <a href="Login.jsp"><button class="btn2" ><span>Logout</span></button></a>
		
        <div id="container">
            <div id="menu">
                <ul>
                    <li><a href="HomePage.jsp" style=color:white>Home</a></li>
                    <li><a href="BYO.jsp" style=color:white>Build a System</a></li>
                    <li>Step-by-Step Guides</li>
                    <li><a href="CompletedBuilds.jsp" style="color: white">Completed Builds</a></li>
                    <li><a href="Aboutuspage.jsp" style="color: white">About Us</a></li>
                    <li><a href="MeetTheTeam.jsp" style=color:white>Meet The Team </a></li>
                </ul>
            
            </div>
            
            <!-- Portfolio Gallery Grid -->
            <h1>Step-By-Step Guides</h1>
            <hr>
            <div class="row">
           <div class="column">
      <div class="content">
      <img src="images/highend.jpg" alt="highend" style="width:100%">
      <h3>Highend Gaming</h3>
      <a href="Highend.jsp" style="color: black">Click here</a>
    </div>
  </div>
		       
	<div class="column">
	<div class="content">
   	<img src="images/midend.jpg" alt="midend" style="width:100%">
      <h3>Midend Gaming</h3>
      <a href="Midend.jsp" style="color: black">Click here</a>
    </div>
  </div>
  
 <div class="column">
    <div class="content">
    <img src="images/low.jpg" alt="lowend" style="width:100%">
      <h3>Lowend Gaming</h3>
      <a href="Lowend.jsp" style="color: black">Click here</a>
  </div>

  </div>
            <div id="content">
                
            </div>
        </div>
        
        </div>
        
        <div id="footer">
                <cite>For customer support: (954)458-2358
                </cite>
        </div>
        
</body>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d9ddb890dd58db5',m:'BAhDVSFjCFChjPhnpWbjyNz.NdlHk_wZiCvgJIrYaik-1644249903-0-AfDeExlrVYnYzVk3RW56W+U9EhsbaeviIw4RPYCXfRQJ7kB/FUvNeNpdym9lIYrAc0WK9sBbyd2BvMh7cEC36FVZbvgA8bhPL8lZn/rfmRdU0EdnLJSoncSQgSsPMx+ioWqlwE8rxA4c9lXMsGQBTv3xDCscw1f/kNDfuSN8pUhB2HiaR5H1gEp2co6/VRDxXBjMQporRiYPj23cgJHCxkU=',s:[0x3bdf3daa40,0x2f53019840],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6da0f0c0dc890981',m:'_fWDNoa3jf2fcuDfQnbmrUVG1__WdTMUEeScS3egoQc-1644282229-0-AZ1ZiPI3rkZM3EwvwDNoq+Q6720tunTsXehGDMSFXdeNDQpvZ0lnKcNS5RuVop0rSEZLfSBgwKEOYQuFq1CZ/kqizeK8pIMYf2hb4NUxxWFr/T5/aKe7iESJukotdQ6j/HtI4wONrwJ2OzoUobKPfsG8oS7ubAdf4bpeKqPeUZgkujex/hlOCjXWAQDf/sFAQcrQ0cs7kbLCr3/bQRifwWc=',s:[0x06c472a3ca,0x6e72fb238a],}})();</script>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96c9761c301287',m:'kHrsFQRMtHMsdauCbP1Wk_u3c0AiFmpknMk1bTNheB8-1644175762-0-AY1POzGZbg5gL0Z5Bbnk2VtyLnU2TEStYJxDibTy/uxBtb5hFtD0tvQLjE01wcvauy4EOijfXXIgzLOww+4I6GnzimVLjEA0vBGRPEIQMGCIgv+viZbxQRqbD8VEJPEOJr9/6Noky5Qk36FqbyEsc466cJoK4R6AZdWDRo3c4GiSrFCMBmiA6+ENKsh86LmkCSEfDOt0rC4ajG+GNzC+M3c=',s:[0x36ac4ee9ab,0x26a47daf4e],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96ec144c7f2248',m:'a5XA02v37iFX32WguoibiBizTJFxYvhdK_cZeadJV6o-1644177180-0-Ac6YYJBu5JhAoEDOWCQdjkZh5CJmG2fNwuc1+v+pX8YV7cM0p10p1m8w6cmKOHhrvgGOh3U2bQkGvFX8eaPaDAdUQdYIPZXX+eqqhMboflhBaKCK/ZhLA15RQtZze1hm4BPauCy039h/H13QwPAY05tW0YYz+Uk0HdgntUv3l+V0ZHyKjus3TEA7nddLSJadbP1qrPtqwgZjr3H3PRdhzkc=',s:[0xa9037207ce,0xe1c08c5460],}})();</script>

</html>