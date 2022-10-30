<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
  	import = "edu.fau.group3.model.Login_Table"
    %>
<!DOCTYPE html>
<html>
    <head>
        <title>About Us</title>
        <link rel=stylesheet href="assignmentstyles2.css" type="text/css">
        <link rel=stylesheet href="assignmentstyles2.5.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel=stylesheet href="assignmentstyles3.css" type="text/css">
        <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script>
        <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script>
        
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
        
            #abtcontent{
                display: table-cell;
                padding: 60px;
                background-color: grey;
                color: whitesmoke;
                font-size:17px
            }
        
        </style>
        
    <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script></head>
        
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
                    <li><a href="Prototype.jsp" style=color:white>Step-By-Step Guides</a></li>
                    <li><a href="CompletedBuilds.jsp" style="color: white">Completed Builds</a></li>
                    <li>About Us</li>
                    <li><a href="MeetTheTeam.jsp" style=color:white>Meet The Team </a></li>
                </ul>
            
            </div>
            
            <div id="abtcontent">
                <h1>About Us</h1>
                <hr>
                
                <h2>Who are we?</h2>
                
                <p>PCworld.com was founded on the principle of why let someone else do it when you can do it better? With the help of our system builder a user can pick and choose the parts they wish to use to complete their dream build. Whether you plan on using building a workstation, gaming rig, or streaming pc all the parts you can imagine will be avaiable in our build a system webpage. Not only can a user build their own system but users can upload their own computer specifications to completed builds to either show off their creation or help others get an idea of what they would like and help find something within their budget. At PCworld.com anything is possible to build!</p>
                
                <h1>Frequently Asked Questions</h1>
                
                <h2>-Are there prices listed with products?</h2>
                
                <p>Yes, Prices are listed with products so users can see the total price of their build and as well compeleted builds.</p><br>
                
                <h2>-What brands does PCworld.com support?</h2>
                
                <p>PCworld.com lists products from NZXT, EVGA, NVIDIA, ASUS, MSI, ASROCK, Corsair, and many other reptuable dealers.</p><br>
                
                <h2>-Is there warranty for the products on PCworld.com?</h2>
                
                <p>Every product over $100 USD will have a 30 day warranty for issues such as damaged during shipping and faulty parts. We do not accept returns if product was damaged by shoppers.</p><br>
                
                <h2>-How long does shipping take?</h2>
                
                <p>Product shipping time can vary depending on what is in stock and if there are any global supply chain issues. Currently with the silicon shortage in 2022, customers should expect a lead time when ordering system parts such as Centeral Processing units (AMD 5900x, 5800x, 5600x, and Intel 12900k, 12700k) or Random Access Memory sticks (DDR4 or DDR5).</p><br>
                
                <h2>-Why should I register an account with PCworld.com?</h2>
                
                <p>If you are interested in saving your builds and showing off your personal computer builds having a PCworld.com account will let you do so! Not only does it show users what your final product looks like but as well helps our website see how we were able to help you reach your pc building dream.</p><br>
                
            </div>
        
        </div>
        
        <div id="footer">
                <cite>For customer support: (954)458-2358
                </cite>
        </div>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6da9a2968ac98e00',m:'KvINGz0aBItEhk8bLqQ7wrkjAgl5bYs3Ei_6AotDv8k-1644373400-0-Ad5rTnEHA96HPh0MqFWgYI2d0XwREM++kMIGj4aMfqWi2oTaD7gnuNPAoJ/BLjPg61+/URyZk51e71O1oLJw8ezrSvHybF+KWgfQF7jqreD+lGioRMMW2UngsTpIRWolHsOJE7MslOJqSvewNvgZkWYdKVPUnkqnscDNIFuhrd0JF9bIfLEUD5A4xCaZ6+Ijb+q36gk7b0AAV5iSe80MfCs=',s:[0xb58bd7c09d,0xa6833dd10b],}})();</script></body>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96c9761c301287',m:'kHrsFQRMtHMsdauCbP1Wk_u3c0AiFmpknMk1bTNheB8-1644175762-0-AY1POzGZbg5gL0Z5Bbnk2VtyLnU2TEStYJxDibTy/uxBtb5hFtD0tvQLjE01wcvauy4EOijfXXIgzLOww+4I6GnzimVLjEA0vBGRPEIQMGCIgv+viZbxQRqbD8VEJPEOJr9/6Noky5Qk36FqbyEsc466cJoK4R6AZdWDRo3c4GiSrFCMBmiA6+ENKsh86LmkCSEfDOt0rC4ajG+GNzC+M3c=',s:[0x36ac4ee9ab,0x26a47daf4e],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96ec144c7f2248',m:'a5XA02v37iFX32WguoibiBizTJFxYvhdK_cZeadJV6o-1644177180-0-Ac6YYJBu5JhAoEDOWCQdjkZh5CJmG2fNwuc1+v+pX8YV7cM0p10p1m8w6cmKOHhrvgGOh3U2bQkGvFX8eaPaDAdUQdYIPZXX+eqqhMboflhBaKCK/ZhLA15RQtZze1hm4BPauCy039h/H13QwPAY05tW0YYz+Uk0HdgntUv3l+V0ZHyKjus3TEA7nddLSJadbP1qrPtqwgZjr3H3PRdhzkc=',s:[0xa9037207ce,0xe1c08c5460],}})();</script>

</html>