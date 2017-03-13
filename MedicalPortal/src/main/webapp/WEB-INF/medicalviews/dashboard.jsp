<%@page import="java.util.*"%>
<%@page import="com.team.test.domain.*"%>
<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Unizen Dashboard</title>
	<link rel="icon" href="css/logo.png" type="image/x-icon" />
	 <link href="css/pichart.css" rel="stylesheet">
	
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
	
	
	<link rel="stylesheet" href="css/atomDashboard.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
   <script src="js/pichart.js"></script>
  
   <script type="text/javascript" src="js/jquery-latest.js"></script>
	 <script src="js/bootstrap.min.js"></script>
	
  </head>
  <body>
    <script src="js/barchart.js"></script>
    <% List<Waterconsumption> waterconsumed=(List<Waterconsumption>)request.getAttribute("waterconsumed");
    System.out.println("value"+waterconsumed.get(0).getValue());
    %>
    
 <script type="text/javascript">
 $(document).ready(function() {	
	 //alert("value"+waterconsumed.get(0).getValue());
	 var value=document.getElementById("barVal");
	 alert(value);
		function createCanvas(divName) {
			var div = document.getElementById(divName);
			var canvas = document.createElement('canvas');
			div.appendChild(canvas);
			if (typeof G_vmlCanvasManager != 'undefined') {
				canvas = G_vmlCanvasManager.initElement(canvas);
			}	
			var ctx = canvas.getContext("2d");
			return ctx;
		}
		var ctx = createCanvas("graphDiv1");
		
		var graph = new BarGraph(ctx);
		graph.maxValue = 30;
		graph.margin = 2;
		graph.colors = ["#49a0d8", "#d353a0", "#ffc527", "#df4c27"];
		graph.xAxisLabelArr = ["3rd March", "4th March", "5th March", "06 March"];
		 alert(Math.random()*30+" ltr");
		
		graph.update([Math.random()*30, Math.random()*30,Math.random()*30,Math.random()*30]);
		
		
		/* var ctx2 = createCanvas("graphDiv2");
		
		var graph2 = new BarGraph(ctx2);
		graph2.margin = 2;
		graph2.width = 450;
		graph2.height = 150;
		graph2.xAxisLabelArr = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"];
		graph2.update([Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20, Math.random() * 20]);*/
		

	}); 
	</script>

		  <% 
		  	 response.setIntHeader("Refresh",120);  
		  Info info=(Info)request.getAttribute("info");
		  %>
		  	
	<div class="container-fluid">
		<div class="content-wrapper">
		 <div class="col-sm-12">
		  <div class="white-box">
			  <nav class="navbar navbar-inverse">
	    			<div class="navbar-header">
		  				<a href="dashboard"><img src=""></img></a>
	    			</div>
				    
					 <ul class="nav navbar-nav navbar-right">
				       <li><a href="#"><span class="glyphicon glyphicon-user"></span><b> Welcome Unizen</b></a></li>
				       <li class="log"><a href="logout"><span class="glyphicon glyphicon-log-in"></span><b>Logout&nbsp;</b></a></li>
					</ul>
			  </nav>
					
			
				<div class="page-main-heading mar-top-40 mar-btm-25 overflow-hidden">
					<div class="col-sm-5">
						<h2 class="text-uppercase text-blue mar-top-5 text-regular"><img src="images/unizen.png">&nbsp;<b>Unizen Dashboard</b></h2>
					</div>
					<div class="col-sm-7 text-right">
						<button class="btn btn-blue font-16" onClick="location.reload();"><img src="images/icon_refresh.png"  />&nbsp;&nbsp;REFRESH</button>
						<a href="dashboard"><button class="btn btn-blue font-16"><img src="images/icon_home.png"  />&nbsp;&nbsp;HOME</button>&nbsp;&nbsp;</a>
			        </div>		
				</div>
		</div>
		  </div>
			 </div>
			 
			 
			 
	
				<div class="content-wrapper">
			  					 <div class="col-sm-12">
			  					 	<div class="white-box">
			  					 	<h6 class="text-uppercase text-semi-bold"><img src="images/barchart.png">&nbsp;&nbsp; <b>Bar Chart-<i>Water Consumptions in ltr</i></b></h6> 
			  							<div id="graphDiv1">
			  							<input type="hidden" id="barVal" value="<%=waterconsumed.get(0).getValue()%>">
			  							</div>
										<div id="graphDiv2"></div>		
																
								  	</div>		
			  					</div>	
			   </div>
	
	
	
				<div class="content-wrapper">
			 	       <div class="col-sm-12">
			          		<div class="white-box">
			                 <h6 class="text-uppercase text-semi-bold"><img src="images/pi.jpg">&nbsp;&nbsp; <b>Pi Chart-<i>Contamination Sensor</i></b></h6>  
			      					<canvas id="chart" width="500" height="400"></canvas>
			      					
			      					<table id="chartData">
			    						<thead>
										      <tr>
										        <th style="color: #0DA068" class="text-left" width="20%">ISO4</th>
										        <th style="color: #194E9C" class="text-left" width="20%">ISO6</th>
										        <th style="color: #ED9C13" class="text-left" width="20%">MAX+</th>
										        <th style="color: #ED5713" class="text-left" width="20%">Temp</th>
										      </tr>
			    						</thead>
			   							 <tbody>
			      							 <tr>
			       						        <td style="color: #0DA068"><%=info.getIso4()%></td>
									        	<td style="color: #194E9C"><%=info.getIso6()%></td>	
									            <td style="color: #ED9C13"><%=info.getMax_()%></td>
									            <td style="color: #ED5713"><%=info.getTemp()%></td>
			     							 </tr> 
			  						     </tbody>
			  						  </table>
			  						 
			  					 </div>
			  					 
			  					 </div>
			  		</div>			 
			  					 
			  	</div>				 
  		  
 	
 </body>
</html> 