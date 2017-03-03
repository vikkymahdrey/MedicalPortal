<%@page import="java.util.*"%>
<%@page import="com.team.test.domain.*"%>
<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Dashboard</title>
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


		  <% 
		  	 response.setIntHeader("Refresh",120);  
		  Info info=(Info)request.getAttribute("info");
		  %>
		  	
				  	<header>
				  	<div class="container-fluid">
							<div class="row">
								<div class="col-sm-4" >
				      				<a href="#" class="header-logo al">
										<img src="" alt="" />
									</a>
								</div>
				                
				              	<div class="pull-right">
				             	   <div class="collapse navbar-collapse" id="myNavbar">
				          						<ul class="nav navbar-nav account_menu">
				      						       <li>
				        								 <a class="dropdown-toggle user-account" data-toggle="dropdown" href="#"> <img src="images/index.png" class="pro_photo al"><%="Welcome Unizen" %> <span class="caret"></span>
				     									 </a>
												         <ul class="dropdown-menu">
												            <li><a href="Logout" >Logout</a></li>
												         </ul> 
				        
				        							</li>
				      							 </ul>
				   				  </div> 
				               </div>
				                       
						  
						 
					</header>
					</div>
			
	<div class="page-main-heading mar-top-40 mar-btm-25 overflow-hidden">
		<div class="col-sm-5">
			<h2 class="text-uppercase text-blue mar-top-5 text-regular"><b>Dashboard</b></h2>
		</div>
		<div class="col-sm-7 text-right">
			<button class="btn btn-blue font-16" onClick="location.reload();"><img src="images/icon_refresh.png"  />&nbsp;&nbsp;REFRESH</button>
			<a href="dashboard"><button class="btn btn-blue font-16"><img src="images/icon_home.png"  />&nbsp;&nbsp;HOME</button>&nbsp;&nbsp;</a>
        </div>		
	</div>
	
	<div class="content-wrapper">
 	       <div class="col-sm-9">
          		<div class="white-box">
                 <h6 class="text-uppercase text-semi-bold"><img src="images/pi.png">&nbsp;&nbsp; <b>Pi Chart-<i>Contamination Sensor</i></b></h6>  
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
 	
 </body>
</html> 