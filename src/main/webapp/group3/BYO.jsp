<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
  	import = "edu.fau.group3.model.Login_Table"
  	import = "edu.fau.group3.model.CPU_Table"
  	import = "edu.fau.group3.model.GPU_Table"
  	import = "edu.fau.group3.model.Memory_Table"
  	import = "edu.fau.group3.model.Storage_Table"
  	import = "edu.fau.group3.model.Case_Table"
  	import = "edu.fau.group3.model.Motherboard_Table"
  	import = "edu.fau.group3.model.Cooler_Table"
  	import = "edu.fau.group3.model.PSU_Table"
  	import = "edu.fau.group3.model.Monitor_Table"
  	import = "java.util.List"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
  <head>
        <title>Build-Your-Own</title>
        <link rel="stylesheet" href="assignmentstyles2.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href=assignmentstyles3.css type="text/css">
         <link rel="stylesheet" href="assignmentstyles4.css" type="text/css">
        <link rel="stylesheet" href="layout.css" type="text/css">
        <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script><script async src='/cdn-cgi/bm/cv/669835187/api.js'></script>
        
    <script async src='/cdn-cgi/bm/cv/669835187/api.js'></script>
    
        <style type="text/css">
        
          #content {
                display: table-cell;
                padding: 50px;
                background-color: dimgrey;
                color: whitesmoke;
            }
            
            #content2 {
                display: table-cell;
                float: right;
                background-color: dimgrey;
                color: whitesmoke;
            }
            
            #content3 {
                display: table-cell;
                float: right;
                background-color: dimgrey;
                color: whitesmoke;
            }

            #content4 {
                display: table-cell;
                float: right;
                background-color: dimgrey;
                color: whitesmoke;
            }

            #content5 {
                display: table-cell;
                float: right;
                background-color: dimgrey;
                color: whitesmoke;
            }

            #content6 {
                display: table-cell;
                float: right;
                background-color: dimgrey;
                color: whitesmoke;
            }
            
            #content7 {
                display: table-cell;
                float: right;
                background-color: dimgrey;
                color: whitesmoke;
            }
            
             #content8 {
                display: table-cell;
                float: right;
                background-color: dimgrey;
                color: whitesmoke;
            }

             #content9 {
                display: table-cell;
                float: right;
                background-color: dimgrey;
                color: whitesmoke;
            }
            
              #content10 {
                display: table-cell;
                float: right;
                background-color: dimgrey;
                color: whitesmoke;
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
                    <li>Build a System</li>
                    <li><a href="Prototype.jsp" style=color:white>Step-by-Step Guides</a></li>
                    <li><a href="CompletedBuilds.jsp" style="color: white">Completed Builds</a></li>
                    <li><a href="Aboutuspage.jsp" style="color: white">About Us</a></li>
                    <li><a href="MeetTheTeam.jsp" style=color:white>Meet The Team </a></li>
                </ul>
            
            </div>
            
  		<div id="content">
                <h1>Build-Your-Own</h1>
                <hr>
                
                
                <%
                List<CPU_Table> cpuList = DBUtil.getAllCPUS();
                %>
                
                <form name="frm1">
                  <p>CPU: </p>
                    <select name="CPU" id="CPUList">
                    
                    <%
                    
                    	for (int index = 0; index < cpuList.size(); index++) {
                    		out.print("<option>" + cpuList.get(index).getBrand() + " " + cpuList.get(index).getCPUType() + ".....$" + cpuList.get(index).getPrice() + "</option>");
                    	}
                    
                    %>
                    </select>
                    
   
                <div id="content2">
                        
                </div>
                
                
                <script>
                    document.getElementById('CPUList').addEventListener('change', function() {
                        'use strict';
                        var select = document.getElementById('CPUList');
                        var value = select.options[select.selectedIndex].value;
                            document.getElementById("content2").innerHTML = value;
                    });
 
                </script>
                </form>
                
                <hr>
                
             	<%
                List<Cooler_Table> coolerList = DBUtil.getAllCoolers();
                %>
                
                
                <form name="frm2">
                    <p>CPU Cooler:</p>
                    <select name="Cooler" id="CoolerList">
                    
                    <%
                    
                    	for (int index = 0; index < coolerList.size(); index++) {
                    		out.print("<option>" + coolerList.get(index).getBrand() + " " + coolerList.get(index).getCoolerType() + ".....$" + coolerList.get(index).getPrice() + "</option>");
                    	}
                    
                    %>
                    </select>
                
                <div id="content3">
                    
                </div>
                
                <script>
                        document.getElementById('CoolerList').addEventListener('change', function() {
                        'use strict';
                        var select = document.getElementById('CoolerList');
                        var value = select.options[select.selectedIndex].value;
                            document.getElementById("content3").innerHTML = value;
                    });
                </script>
                </form>
            
                 <hr>
                    
               <%
                List<GPU_Table> gpuList = DBUtil.getAllGPUS();
                %>
                
                <form name="frm3">
                    <p>GPU:</p>
                    <select name="GPU" id="GPUList">
                    
                    <%
                    
                    	for (int index = 0; index < gpuList.size(); index++) {
                    		out.print("<option>" + gpuList.get(index).getBrand() + " " + gpuList.get(index).getGPUType() + ".....$" + gpuList.get(index).getPrice() + "</option>");
                    	}
                    
                    %>
					
                    </select>
                
                    
                 <div id="content4">

                </div>
                    
                <script>
                      document.getElementById('GPUList').addEventListener('change', function() {
                        'use strict';
                        var select = document.getElementById('GPUList');
                        var value = select.options[select.selectedIndex].value;
                            document.getElementById("content4").innerHTML = value;
                    }); 
                </script>
                
                </form>
                
                 <hr>
                 
                <%
                List<Motherboard_Table> motherboardList = DBUtil.getAllMotherboards();
                %>
                
                <form name="frm4">
                   <p>Motherboard:</p>
                    <select name="Motherboard" id="MotherboardList">
                    
                    <%
                    
                    	for (int index = 0; index < motherboardList.size(); index++) {
                    		out.print("<option>" + motherboardList.get(index).getBrand() + " " + motherboardList.get(index).getMotherboardType() + ".....$" + motherboardList.get(index).getPrice() + "</option>");
                    	}
                    
                    %>
                    
                    </select>
                    
                    <div id="content5">
                    
                    </div>
 
                <script>
                      document.getElementById('MotherboardList').addEventListener('change', function() {
                        'use strict';
                        var select = document.getElementById('MotherboardList');
                        var value = select.options[select.selectedIndex].value;
                            document.getElementById("content5").innerHTML = value;
                    }); 
                </script>
                
                    
                </form>
                
                 <hr>
                
               	<%
                List<Memory_Table> memoryList = DBUtil.getAllMemory();
                %>
              
                <form name="frm5">
                    <p>Memory:</p>
                    <select name="Memory" id="MemoryList">
                    
                    <%
                    
                    	for (int index = 0; index < memoryList.size(); index++) {
                    		out.print("<option>" + memoryList.get(index).getBrand() + " " + memoryList.get(index).getMemory() + ".....$" + memoryList.get(index).getPrice() + "</option>");
                    	}
                    
                    %>
                    </select>
                    
                    <div id="content6">
                    
                    </div>
                    
                <script>
                      document.getElementById('MemoryList').addEventListener('change', function() {
                        'use strict';
                        var select = document.getElementById('MemoryList');
                        var value = select.options[select.selectedIndex].value;
                            document.getElementById("content6").innerHTML = value;
                    }); 
                </script>
                    
                
                </form>
                
                 <hr>
                 
                <%
                List<Storage_Table> storageList = DBUtil.getAllStorage();
                %>
                
                <form name="frm6">
                   <p>Storage:</p>
                    <select name="Storage" id="StorageList">
     				<%
                    
                    	for (int index = 0; index < storageList.size(); index++) {
                    		out.print("<option>" + storageList.get(index).getBrand() + " " + storageList.get(index).getStorageType() + ".....$" + storageList.get(index).getPrice() + "</option>");
                    	}
                    
                    %>
                    </select>
                    
                    <div id="content7">
                    
                    </div>
                    
                <script>
                      document.getElementById('StorageList').addEventListener('change', function() {
                        'use strict';
                        var select = document.getElementById('StorageList');
                        var value = select.options[select.selectedIndex].value;
                            document.getElementById("content7").innerHTML = value;
                    }); 
                </script>
                    
                    
                </form>
                
                 <hr>
                 
                <%
                List<Case_Table> caseList = DBUtil.getAllCases();
                %>
                
                <form name="frm7">
                    <p>Tower/Case:</p>
                    <select name="Tower" id="TowerList">
      				<%
                    
                    	for (int index = 0; index < caseList.size(); index++) {
                    		out.print("<option>" + caseList.get(index).getBrand() + " " + caseList.get(index).getcaseType() + ".....$" + caseList.get(index).getPrice() + "</option>");
                    	}
                    
                    %>
                    </select>
                    
                    <div id="content8">
                    
                    </div>
                    
                <script>
                      document.getElementById('TowerList').addEventListener('change', function() {
                        'use strict';
                        var select = document.getElementById('TowerList');
                        var value = select.options[select.selectedIndex].value;
                            document.getElementById("content8").innerHTML = value;
                    }); 
                </script>
                    
                </form>
                
                 <hr>
                
               	<%
                List<PSU_Table> psuList = DBUtil.getAllPsu();
                %>
                
                <form name="frm8">
                    <p>Power Supply:</p>
                    <select name="PowerSupply" id="PowerSupplyList">

      				<%
                    
                    	for (int index = 0; index < psuList.size(); index++) {
                    		out.print("<option>" + psuList.get(index).getBrand() + " " + psuList.get(index).getPsuType() + ".....$" + psuList.get(index).getPrice() + "</option>");
                    	}
                    
                    %>
                    
                    </select>
                    
                    <div id="content9">
                    
                    </div>
                
                 <script>
                      document.getElementById('PowerSupplyList').addEventListener('change', function() {
                        'use strict';
                        var select = document.getElementById('PowerSupplyList');
                        var value = select.options[select.selectedIndex].value;
                            document.getElementById("content9").innerHTML = value;
                    }); 
                </script>
                    
                </form>
                
                 <hr>
                
                <%
                List<Monitor_Table> monitorList = DBUtil.getAllMonitors();
                %>
                
                <form name="frm9">
                    <p>Monitor:</p>
                    <select name="Monitor" id="MonitorList">
                    
      				<%
                    
                    	for (int index = 0; index < monitorList.size(); index++) {
                    		out.print("<option>" + monitorList.get(index).getBrand() + " " + monitorList.get(index).getMonitorType() + ".....$" + monitorList.get(index).getPrice() + "</option>");
                    	}
                    
                    %>
                    
                    </select>
                    
                    <div id="content10">
                    
                    </div>
                    
                                        
                <script>
                      document.getElementById('MonitorList').addEventListener('change', function() {
                        'use strict';
                        var select = document.getElementById('MonitorList');
                        var value = select.options[select.selectedIndex].value;
                            document.getElementById("content10").innerHTML = value;
                    }); 
                </script>
                    
                
                </form>
                
                <hr>
                  
            </div>
        
        </div>
        
        <div id="footer">
                <cite>For customer support: (954)458-2358
                </cite>
        </div>
        
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6da14b29cc3a8da8',m:'xSNrng4ba6CYUWG7WKW8ex6JzUfik27Ajwno4RoAVoA-1644285933-0-AW8ba1fzBib877usZruMTCymb/diadr5dMawgTlZxflGlcm3dPu68Iu/I/hSGKb3KSSTjTa9pAntlkZj358YCpr0emC5hUoo/GzHScn8uBr60fCR98nFCzxMhHkJnIM55PRSmtxbbRHMlyIjfZihbyiwReNTGHzvL8GYPoR+EJ2+IKL71Mb9kgnI1WL7M5mc4w==',s:[0xa855632d11,0x10cb788e6b],}})();</script></body>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d9724ce7ad88dfa',m:'.pRZmIXV6sF3CGhiq4ZC0j_av5zYdJWCwKkR.SyVE3o-1644179504-0-ASNRyOaKP+pTipeYMbtdRvmn1SZzZ+F2Y2L5ZUL/Jk1+zOWkv1hpkh9b1EE/oDp4do2mWFSEf59s7TE3Q6Uo3xEd3uvex1SkesO+h1hq03yf+4hx2PsPwRJvSWkVWvUUMJFWXHHcNxTuGTqJ93FU1WPeD2Sn6XpoOPLyB/Ns+s1t+A6IgKq8d6GAtPkM7bFEfdsPW+gT0CA2MVj2jfiPA3g=',s:[0xa855632d11,0x2f3c880b6e],}})();</script>
    
    <script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96c9761c301287',m:'kHrsFQRMtHMsdauCbP1Wk_u3c0AiFmpknMk1bTNheB8-1644175762-0-AY1POzGZbg5gL0Z5Bbnk2VtyLnU2TEStYJxDibTy/uxBtb5hFtD0tvQLjE01wcvauy4EOijfXXIgzLOww+4I6GnzimVLjEA0vBGRPEIQMGCIgv+viZbxQRqbD8VEJPEOJr9/6Noky5Qk36FqbyEsc466cJoK4R6AZdWDRo3c4GiSrFCMBmiA6+ENKsh86LmkCSEfDOt0rC4ajG+GNzC+M3c=',s:[0x36ac4ee9ab,0x26a47daf4e],}})();</script><script type="text/javascript">(function(){window['__CF$cv$params']={r:'6d96ec144c7f2248',m:'a5XA02v37iFX32WguoibiBizTJFxYvhdK_cZeadJV6o-1644177180-0-Ac6YYJBu5JhAoEDOWCQdjkZh5CJmG2fNwuc1+v+pX8YV7cM0p10p1m8w6cmKOHhrvgGOh3U2bQkGvFX8eaPaDAdUQdYIPZXX+eqqhMboflhBaKCK/ZhLA15RQtZze1hm4BPauCy039h/H13QwPAY05tW0YYz+Uk0HdgntUv3l+V0ZHyKjus3TEA7nddLSJadbP1qrPtqwgZjr3H3PRdhzkc=',s:[0xa9037207ce,0xe1c08c5460],}})();</script>

    
</html>