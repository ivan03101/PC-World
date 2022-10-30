<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
    import = "edu.fau.group3.model.Login_Table"
    %>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <link rel=stylesheet href="assignmentstyles2.css" type="text/css">
        <link rel=stylesheet href="assignmentstyles4.css" type="text/css">
        <link rel=stylesheet href="assignmentstyles3.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script><script async src='/cdn-cgi/bm/cv/669835187/api.js'></script>
        
    <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script><script async src='/cdn-cgi/bm/cv/669835187/api.js'></script></head>
        
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
		
		<a href="edit.jsp"><button class="btn2" ><span>Admin</span></button></a>
		
		<a href="Login.jsp"><button class="btn2" ><span>Logout</span></button></a>
		
		<div id= Username class="btn1">
		
		</div>
		
        <div id="container">
            <div id="menu">
                <ul>
                    <li>Home</li>
                    <li><a href="BYO.jsp" style=color:white>Build-a-System</a></li>
                    <li><a href="Prototype.jsp" style=color:white>Step-by-Step Guides</a></li>
                    <li><a href="CompletedBuilds.jsp" style=color:white>Completed builds</a></li>
                    <li><a href="Aboutuspage.jsp" style=color:white>About Us</a></li>
                    <li><a href="MeetTheTeam.jsp" style=color:white>Meet The Team </a></li>
                </ul>
            
            </div>
            
            
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 4</div>
  <img src="images/PcGuides.jpg" style="width:100%">
  <div class="centered">PCGuides</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 4</div>
  <img src="images/Pre-built-Gaming-PC.jpg" style="width:100%">
  <div class="centered">Prebuilt PC</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 4</div>
  <img src="images/customer-service-rep.jpg" style="width:100%">
  <div class="centered">Customer Service</div>
</div>
    
<div class="mySlides fade">
  <div class="numbertext">4 / 4</div>
  <img src="images/Computer_Parts.jpg" style="width:100%">
  <div class="centered">Computer Parts</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
    <span class="dot"></span>
</div>

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
            <div id="content">
                
            </div>
                
             
        
        </div>
            
        
            
       
        
        <div id="footer">
    <cite>For customer support: (954)458-2358
        </cite>
        
        </div>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d9ddb890dd58db5',m:'BAhDVSFjCFChjPhnpWbjyNz.NdlHk_wZiCvgJIrYaik-1644249903-0-AfDeExlrVYnYzVk3RW56W+U9EhsbaeviIw4RPYCXfRQJ7kB/FUvNeNpdym9lIYrAc0WK9sBbyd2BvMh7cEC36FVZbvgA8bhPL8lZn/rfmRdU0EdnLJSoncSQgSsPMx+ioWqlwE8rxA4c9lXMsGQBTv3xDCscw1f/kNDfuSN8pUhB2HiaR5H1gEp2co6/VRDxXBjMQporRiYPj23cgJHCxkU=',s:[0x3bdf3daa40,0x2f53019840],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6da0f0c0dc890981',m:'_fWDNoa3jf2fcuDfQnbmrUVG1__WdTMUEeScS3egoQc-1644282229-0-AZ1ZiPI3rkZM3EwvwDNoq+Q6720tunTsXehGDMSFXdeNDQpvZ0lnKcNS5RuVop0rSEZLfSBgwKEOYQuFq1CZ/kqizeK8pIMYf2hb4NUxxWFr/T5/aKe7iESJukotdQ6j/HtI4wONrwJ2OzoUobKPfsG8oS7ubAdf4bpeKqPeUZgkujex/hlOCjXWAQDf/sFAQcrQ0cs7kbLCr3/bQRifwWc=',s:[0x06c472a3ca,0x6e72fb238a],}})();</script></body>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96c9761c301287',m:'kHrsFQRMtHMsdauCbP1Wk_u3c0AiFmpknMk1bTNheB8-1644175762-0-AY1POzGZbg5gL0Z5Bbnk2VtyLnU2TEStYJxDibTy/uxBtb5hFtD0tvQLjE01wcvauy4EOijfXXIgzLOww+4I6GnzimVLjEA0vBGRPEIQMGCIgv+viZbxQRqbD8VEJPEOJr9/6Noky5Qk36FqbyEsc466cJoK4R6AZdWDRo3c4GiSrFCMBmiA6+ENKsh86LmkCSEfDOt0rC4ajG+GNzC+M3c=',s:[0x36ac4ee9ab,0x26a47daf4e],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96ec144c7f2248',m:'a5XA02v37iFX32WguoibiBizTJFxYvhdK_cZeadJV6o-1644177180-0-Ac6YYJBu5JhAoEDOWCQdjkZh5CJmG2fNwuc1+v+pX8YV7cM0p10p1m8w6cmKOHhrvgGOh3U2bQkGvFX8eaPaDAdUQdYIPZXX+eqqhMboflhBaKCK/ZhLA15RQtZze1hm4BPauCy039h/H13QwPAY05tW0YYz+Uk0HdgntUv3l+V0ZHyKjus3TEA7nddLSJadbP1qrPtqwgZjr3H3PRdhzkc=',s:[0xa9037207ce,0xe1c08c5460],}})();</script>

</html>