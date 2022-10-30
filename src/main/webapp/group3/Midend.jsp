<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
  	import = "edu.fau.group3.model.Login_Table"
    %>
<!DOCTYPE html>
<html>
  <head>
        <title>Midend</title>
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
      <img src="images/i5.jpg" alt="I5" width="300" height="300" >
      <div class="container">
        <h2>I5 Intel</h2>
        <p class="title">Processor</p>
        <p>Lets start off with the processor, we have an I5 Intel core processor installed in are PC. 
        Now what does this mean.A Core i5 will typically be better for multitasking, media-editing and media-creation tasks, mid-end gaming, and similar demanding workloads.</p>
        <p></p>
        
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/RTX%202080.jpg" alt="3080" width="300" height="300">
      <div class="container">
        <h2>2080 RTX</h2>
        <p class="title">Graphic Card</p>
        <p> The GeForce RTX 2080 Ti and RTX 2080 graphics cards deliver the amazing performance that gamers crave, powered by Ampere NVIDIA's 2nd Gen RTX architecture. 
        They are built with enhanced RT Cores and Tensor Cores, new streaming multiprocessors, and superfast G6X memory for an amazing gaming experience.</p>
        <p></p>
        
      </div>
    </div>
  </div>
                
 <div class="column">
    <div class="motherboard">
      <img src="images/midmotherboard.jpg" alt="3080" width="300" height="300">
      <div class="container">
        <h2>B550 chipsets</h2>
        <p class="title">Motherboard</p>
        <p>We're using a parametric filter to constantly select the best-priced motherboard while meeting selected criteria. In this case, we are filtering for ATX and mATX motherboards with B550 chipsets and up to 4 DDR4 DIMM slots for future expansion. The compatibility engine will filter out anything not compatible with the build, and it will automatically update with the best priced option as prices change.</p>
        <p></p>
        
      </div>
    </div>
  </div> 
                
<div class="column">
    <div class="memory">
      <img src="images/midmemmory.jpg" alt="3080" width="300" height="300">
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
        <p>Since storage needs may differ, adjust the capacity as needed. We recommend at least 500 GB of SSD storage. 1TB typically provides the most optimal storage capacity for the price. </p>
        <p></p>
       
      </div>
    </div>
  </div> 
                
  <div class="column">
    <div class="case">
      <img src="images/towerhigh.jpg" alt="3080" width="300" height="300">
      <div class="container">
        <h2>Phanteks Eclipse P500A D-RGB</h2>
        <p class="title">Case</p>
        <p>All of our components are housed in the Phanteks Eclipse P500A D-RGB. This case features a black design with a tempered glass side panel and mesh front panel. It includes two front panel USB 3 ports, one USB Type-C port, a PSU shroud, and a number of cable management holes and tie-offs to help your build look cleaner. It can also comfortably fit full-sized video cards and large CPU coolers. </p>
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