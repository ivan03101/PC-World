<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
  	import = "edu.fau.group3.model.Login_Table"
    %>
<!DOCTYPE html>
<html>
   <head>
        <title> Meet The Team </title>
        <link rel=stylesheet href="assignmentstyles2.css" type="text/css">
         <link rel=stylesheet href="assignmentstyles3.css" type="text/css">
        <link rel=stylesheet href="assignmentstyles4.css" type="text/css">
         <link rel=stylesheet href="layout.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script><script async src='/cdn-cgi/bm/cv/669835187/api.js'></script><script async src='/cdn-cgi/bm/cv/669835187/api.js'></script>
    
        <style type="text/css">
   	 #menu {
                border-right-style: Solid;
                border-color: black;
                border-width: 0px;
                display: table-cell;
                padding: 25px;
                background-color: midnightblue;
                color: white;
                font-weight: bold;
                width: 3px;
 
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
		
        
       <div id= Username class="btn1" style= "float:left">
		
		<%="Welcome, " + username %>
		
		</div>
		
      	<a href="Login.jsp"><button class="btn2" ><span>Logout</span></button></a>
    
        
        <div id="container">
                    
            <div class="row">
  <div class="column">
    <div class="card">
      <img src="images/IMG_1301.JPG" alt="Orane" style="width:100%" >
      <div class="container">
        <h2>Orane Wright</h2>
        <p class="title">Web Designer</p>
        <p>FAU - Senior</p>
        <p>owright2018@fau.edu</p>
        
      </div>
    </div>
  </div>

      <div class="column">
    <div class="card">
      <img src="images/ivan.jpg" alt="Ivan" style="width:100%">
      <div class="container">
        <h2>Ivan Neto</h2>
        <p class="title">Web Designer</p>
        <p>FAU - Senior</p>
        <p>iolilveirane2018@fau.edu</p>
        
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/Austin.jpg" alt="Austin" style="width:100%">
      <div class="container">
        <h2>Austin Hill</h2>
        <p class="title">Web Designer</p>
        <p>FAU - Senior</p>
        <p>austinhill2018@fau.edu</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/Ethan.jpg" alt="Ethan" style="width:100%">
      <div class="container">
        <h2>Ethan Agudelo</h2>
        <p class="title">Web Designer</p>
        <p>FAU - Junior</p>
        <p>eagudelo2019@fau.edu</p>
        
      </div>
    </div>
  </div>
</div>
	<a href="HomePage.jsp">Back to Home</a>
</div>
 
 <div id="footer">
                <cite>For customer support: (954)458-2358
                </cite>
        </div>
</body>
<script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d9ddb890dd58db5',m:'BAhDVSFjCFChjPhnpWbjyNz.NdlHk_wZiCvgJIrYaik-1644249903-0-AfDeExlrVYnYzVk3RW56W+U9EhsbaeviIw4RPYCXfRQJ7kB/FUvNeNpdym9lIYrAc0WK9sBbyd2BvMh7cEC36FVZbvgA8bhPL8lZn/rfmRdU0EdnLJSoncSQgSsPMx+ioWqlwE8rxA4c9lXMsGQBTv3xDCscw1f/kNDfuSN8pUhB2HiaR5H1gEp2co6/VRDxXBjMQporRiYPj23cgJHCxkU=',s:[0x3bdf3daa40,0x2f53019840],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6da0f0c0dc890981',m:'_fWDNoa3jf2fcuDfQnbmrUVG1__WdTMUEeScS3egoQc-1644282229-0-AZ1ZiPI3rkZM3EwvwDNoq+Q6720tunTsXehGDMSFXdeNDQpvZ0lnKcNS5RuVop0rSEZLfSBgwKEOYQuFq1CZ/kqizeK8pIMYf2hb4NUxxWFr/T5/aKe7iESJukotdQ6j/HtI4wONrwJ2OzoUobKPfsG8oS7ubAdf4bpeKqPeUZgkujex/hlOCjXWAQDf/sFAQcrQ0cs7kbLCr3/bQRifwWc=',s:[0x06c472a3ca,0x6e72fb238a],}})();</script></body>
    
<script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96c9761c301287',m:'kHrsFQRMtHMsdauCbP1Wk_u3c0AiFmpknMk1bTNheB8-1644175762-0-AY1POzGZbg5gL0Z5Bbnk2VtyLnU2TEStYJxDibTy/uxBtb5hFtD0tvQLjE01wcvauy4EOijfXXIgzLOww+4I6GnzimVLjEA0vBGRPEIQMGCIgv+viZbxQRqbD8VEJPEOJr9/6Noky5Qk36FqbyEsc466cJoK4R6AZdWDRo3c4GiSrFCMBmiA6+ENKsh86LmkCSEfDOt0rC4ajG+GNzC+M3c=',s:[0x36ac4ee9ab,0x26a47daf4e],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96ec144c7f2248',m:'a5XA02v37iFX32WguoibiBizTJFxYvhdK_cZeadJV6o-1644177180-0-Ac6YYJBu5JhAoEDOWCQdjkZh5CJmG2fNwuc1+v+pX8YV7cM0p10p1m8w6cmKOHhrvgGOh3U2bQkGvFX8eaPaDAdUQdYIPZXX+eqqhMboflhBaKCK/ZhLA15RQtZze1hm4BPauCy039h/H13QwPAY05tW0YYz+Uk0HdgntUv3l+V0ZHyKjus3TEA7nddLSJadbP1qrPtqwgZjr3H3PRdhzkc=',s:[0xa9037207ce,0xe1c08c5460],}})();</script>


</html>