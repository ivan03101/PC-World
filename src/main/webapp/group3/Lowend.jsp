<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
  	import = "edu.fau.group3.model.Login_Table"
    %>
<!DOCTYPE html>
<html>
  <head>
        <title>Lowend</title>
        <link rel=stylesheet href="assignmentstyles2.css" type="text/css">
        <link rel=stylesheet href="assignmentstyles2.5.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel=stylesheet href="assignmentstyles3.css" type="text/css">
        <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script>
        <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script>
         
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

 <div class="row">
  <div class="column">
    <div class="card">
      <img src="images/i3.jpg" alt="I3" width="300" height="300" >
      <div class="container">
        <h2>I3 Intel</h2>
        <p class="title">Processor</p>
        <p>Our CPU of choice is the Intel Core i3-12100F. This CPU is inexpensive but still packs a punch with its 4 cores/8 threads and 4.3 GHz turbo frequency. The Core i3-12100F includes a CPU cooler, so a 3rd-party cooler isn't necessary.</p>
        <p></p>
        
      </div>
    </div>
  </div>

      <div class="column">
    <div class="card">
      <img src="images/lowgpu.jpg" alt="3080" width="300" height="300">
      <div class="container">
        <h2>GeForce GTX 1650 SUPER</h2>
        <p class="title">Graphic Card</p>
        <p>We have set a parametric filter for the best-priced GeForce GTX 1650 SUPER, which will let you play any popular game available today, including Valorant, Fortnite, PUBG, Apex Legends, and Minecraft.
</p>
        <p></p>
        
      </div>
    </div>
  </div>
                
  <div class="column">
    <div class="motherboard">
      <img src="images/lowboard.jpg" alt="3080" width="300" height="300">
      <div class="container">
        <h2>B660 chipsets</h2>
        <p class="title">Motherboard</p>
        <p>We're using a parametric filter to constantly select the best-priced ATX or mATX motherboard while meeting selected criteria. In this case, we are filtering for B660 chipsets and 4 DDR4 DIMM slots for future expansion. The compatibility engine will filter out anything not compatible with the build. The motherboards are also capable of using the CPU's integrated GPU, in case you need to RMA your GPU or are waiting for a sale or upgrade.</p>
        <p></p>
        
      </div>
    </div>
  </div> 
                
   <div class="column">
    <div class="memory">
      <img src="images/lowmemmory.jpg" alt="3080" width="300" height="300">
      <div class="container">
        <h2>2x8GB kit of DDR4 RAM</h2>
        <p class="title">Memory</p>
        <p> We are filtering for a 2x8GB kit of DDR4 RAM with a speed of at least DDR4-3200 and a CAS latency of 16 or lower, as Ryzen CPUs scale well with faster memory.</p>
        <p></p>
       
      </div>
    </div>
  </div>  
  
  <div class="column">
    <div class="Storage">
      <img src="images/midstorage.jpg" alt="3080" width="300" height="300">
      <div class="container">
        <h2>NVME SSD</h2>
        <p class="title">Storage</p>
        <p>We're also using a parametric filter to select the best priced SSD available that is at least 480GB. Everyone's storage needs are different, so feel free to change drive capacity or add a drive to fit yours.</p>
        <p></p>
       
      </div>
    </div>
  </div> 
                
   <div class="column">
    <div class="case">
      <img src="images/lowcase.jpg" alt="3080" width="300" height="300">
      <div class="container">
        <h2>Phanteks Eclipse P500A D-RGB</h2>
        <p class="title">Case</p>
        <p>The Fractal Design Focus G is an ATX case with 1x USB 3.2 Gen 1 port and 1x USB 2.0 port, and it fits full-size graphics cards without issue. It provides several cable management holes and tie-offs for easier cable management. The side panel includes a large acrylic window, while the front panel uses a mesh cut for better airflow to the rest of the case. </p>
        <p></p>
       
      </div>
    </div>
  </div> 
  
   <div class="column">
    <div class="power supply">
      <img src="images/powerhigh.jpg" alt="3080" width="300" height="300">
      <div class="container">
        <h2>Parametric</h2>
        <p class="title">Power Supply</p>
        <p>For our power supply, we're using a parametric selection of well-reviewed fully modular units, all of which are 80+ Gold certified or above and can provide plenty of power for this build. </p>
        <p></p>
       
      </div>
    </div>
  </div>
  


</body>
</html>