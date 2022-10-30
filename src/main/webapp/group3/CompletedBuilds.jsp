<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
  	import = "edu.fau.group3.model.Login_Table"
    %>
<!DOCTYPE html>
<html>
  <head>
        <title>Completed Builds</title>
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
        
            #completebuilds{
                display: table-cell;
                padding: 60px;
                background-color: grey;
                color: whitesmoke;
                font-size:17px
            }
            
            #build1{
                padding-left: 300px;
                color:midnightblue;
                border: 5px;
                border-style: solid;
                border-color: black;
            }
            
            #build2{
                padding-left: 300px;
                color:midnightblue;
                border: 5px;
                border-style: solid;
                border-color: black;
            }
            
            #build3{
                padding-left: 300px;
                color:midnightblue;
                border: 5px;
                border-style: solid;
                border-color: black;
            }
        
        </style>
        
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
		
		   <a href="Login.jsp"><button class="btn2" ><span>Logout</span></button></a>
        
        <div id="container">
            <div id="menu">
                <ul>
                    <li><a href="HomePage.jsp" style=color:white>Home</a></li>
                    <li><a href="BYO.jsp" style=color:white>Build a System</a></li>
                    <li><a href="Prototype.jsp" style=color:white>Step-By-Step Guides</a></li>
                    <li>Completed Builds</li>
                    <li><a href="Aboutuspage.jsp" style="color: white">About Us</a></li>
                    <li><a href="MeetTheTeam.jsp" style=color:white>Meet The Team </a></li>
                </ul>
            
            </div>
            
            <div id="completebuilds">
                
            <h1>Completed builds</h1>
                
            <hr>
            
            <h3>Show off your builds!</h3>
            
                
                <div id=build1>
                    
                    <legend><strong><h2>Gaming/Streaming rig</h2></strong></legend><br>
                    
                    <img src="images/pc1.jpg"><br>
                    
                    <ul>
                        <li>CPU: AMD 5900x</li>
                        <li>Motherboard: MSI b550 tomahawk</li>
                        <li>OS: Windows 10 Pro</li>
                        <li>RAM: Corsair DDR4 32GB 3200Mhz</li>
                        <li>GPU: RTX 2080ti founders edition</li>
                        <li>Cooling: Custom watercooling loop</li>
                        <li>Storage: Samsung 2TB SSD</li>
                        <li>Case: NZXT 8510i</li>
                    </ul>
                
                </div>
                
                <div id=build2>
                    
                    <legend><strong><h2>Gaming pc build</h2></strong></legend><br>
                    
                    <img src="images/pc2.jpg"><br>
                    
                    <ul>
                        <li>CPU: AMD 5600x</li>
                        <li>Motherboard: ASUS ROG b550 Gaming</li>
                        <li>OS: Windows 10 Home</li>
                        <li>RAM: HyperX DDR4 16GB 3000Mhz</li>
                        <li>GPU: GTX 1080 founders edition</li>
                        <li>Cooling: Stock AMD cooler</li>
                        <li>Storage: Samsung 500GB SSD</li>
                        <li>Case: Phanteks P500a</li>
                    </ul>
                
                </div>
                
                <div id=build3>
                
                    <legend><strong><h2>Gaming/Workstation desktop build</h2></strong></legend><br>
                    
                    <img src="images/pc3.jpg"><br>
                    
                    <ul>
                        <li>CPU: Intel 12700k</li>
                        <li>Motherboard: MSI PRO Z690-A DDR4</li>
                        <li>OS: Windows 11 Pro</li>
                        <li>RAM: Corsair DDR4 64GB 3600Mhz</li>
                        <li>GPU: EVGA RTX 3070 FTW3</li>
                        <li>Cooling: Corsair ICUE h115i Elite</li>
                        <li>Storage: Western Digital 2TB SSD</li>
                        <li>Case: Corsair 570x mid-tower case</li>
                    </ul>
                
                </div>
                
            </div>
        
        </div>
        
        <div id="footer">
                <cite>For customer support: (954)458-2358
                </cite>
        </div>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6da7198efb6621f4',m:'E8XqcCakUD584pzGnx7oaRECiu6mPqZ0InLuJgOPi6k-1644346815-0-AY/ABdq49/BmdlJsjfZE+etgEzgSA29jkq3sYxv+lKVFXesZvTXfjNJDY7n1tXK1QYfqSKHeoSgMUmo+AMf1CZ8e8eyVcBMxdG0sSTMvVHkX+zJwqAmra1rjYSIy/m0nVVnKKpP3vRf3U6ItUjqWKbERYwlZ5Br3k4th5B+iLyzy9GmZO5/Yv5CYifZ4DS/jU83nnLVDlxLa7pBsC0vOp/U=',s:[0x094bad4a13,0x9f9b0adea2],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6da9a1fe6ea68e00',m:'rlwvEbbG6J6qWtoyfrDJMAyM3TSLxjFVLM0oIejGvzE-1644373375-0-AVZlbFQaC/ZXWoanQiHOBawHINUKmBmL2jBf3JBFAayoIqqE6NU5bQ98CAqcIGA8irn3VYbcwqmZnIyEalWkRnkVhsMYAjOQK2lJj7XKIfL4WrFgCTtIwpDj0rtkPeomG6tlcw7obI3C8q1sUvTCRLol5eEbyCEK5kLy4GcdmL4uLKdC49pTG5Pg7t0nbidN2pPZX+ZqMKowcns+n3HEX2M=',s:[0x86b7da5f2a,0x1ac5008d0b],}})();</script></body>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96c9761c301287',m:'kHrsFQRMtHMsdauCbP1Wk_u3c0AiFmpknMk1bTNheB8-1644175762-0-AY1POzGZbg5gL0Z5Bbnk2VtyLnU2TEStYJxDibTy/uxBtb5hFtD0tvQLjE01wcvauy4EOijfXXIgzLOww+4I6GnzimVLjEA0vBGRPEIQMGCIgv+viZbxQRqbD8VEJPEOJr9/6Noky5Qk36FqbyEsc466cJoK4R6AZdWDRo3c4GiSrFCMBmiA6+ENKsh86LmkCSEfDOt0rC4ajG+GNzC+M3c=',s:[0x36ac4ee9ab,0x26a47daf4e],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96ec144c7f2248',m:'a5XA02v37iFX32WguoibiBizTJFxYvhdK_cZeadJV6o-1644177180-0-Ac6YYJBu5JhAoEDOWCQdjkZh5CJmG2fNwuc1+v+pX8YV7cM0p10p1m8w6cmKOHhrvgGOh3U2bQkGvFX8eaPaDAdUQdYIPZXX+eqqhMboflhBaKCK/ZhLA15RQtZze1hm4BPauCy039h/H13QwPAY05tW0YYz+Uk0HdgntUv3l+V0ZHyKjus3TEA7nddLSJadbP1qrPtqwgZjr3H3PRdhzkc=',s:[0xa9037207ce,0xe1c08c5460],}})();</script>

</html>