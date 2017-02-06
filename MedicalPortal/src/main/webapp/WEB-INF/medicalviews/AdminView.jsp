<%-- 
    Document   : React UI
    Created on : 25 Jan, 2017, 1:00:11 PM
    Author     : Ashok Babu S <ashok@unizentechnologies.com>
    Copyright  : Copyright (C) by Unizen Technologies  
--%>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Medical Home</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom_siemens.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/custom.css" rel="stylesheet">
    
    
	<script type="text/javascript" src="js/jquery-latest.js"></script>
	 <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
   
    
      <!-- React Application --> 
	<script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>  
	<script src="https://fb.me/react-15.3.0.min.js"></script>
    <script src="https://fb.me/react-dom-15.3.0.min.js"></script>
    <script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>
 
  	<script type="text/babel">

	class Home extends React.Component{
		
  	render() {
    return (
         <div>

	<div className="wrapper">
		<div className="header-wrap">
			<div className="container">
				<div className="row">
					
				<div className="col-sm-12 text-right">
					<img src="images/user_iocn_header.png" />&nbsp;Welcome  Medical Team  &nbsp;&nbsp;&nbsp;<a href="logout"><img src="images/logout_icon_header.png" />&nbsp;Log Out</a>
				</div>
				
				</div>
										
			</div>
		</div>
	 
   	
 

	<div className="main-page-container">
		<div className="container">	
		
			<div className="row">
				<div className="col-sm-12">
				
				<div className="breadcrumb-wrap">
					<a href="adminHome"><img src="images/home.png" /></a>
					<a href="#" className="current"><b>My Information </b></a>
					<a href="fetchAllergies"><b>Allergies </b></a>
					<a href="fetchMedication" ><b>Medication</b></a>
										
				</div>
				
				<div className="content-wrap">
				
									
				
					<div className="section-heading">
						<div className="row">
							<div className="col-sm-12">
								Personal Information
							</div>
						</div>
					</div>
					
					
					<div className="push-15">
					<div className="row">
						<div className="col-md-2 col-sm-5 col-xs-6 mar-top-15 text-lightgrey">First Name:</div>
						<div className="col-md-3 col-sm-7 col-xs-6 mar-top-15"><b>Medical</b></div>
						
						<div className="col-md-2 col-sm-5 col-xs-6 mar-top-15 col-md-offset-2 text-lightgrey">Last Name:</div>
						<div className="col-md-2 col-sm-7 col-xs-6 mar-top-15"><b>Team</b></div>						
					</div>
					
									
					
					<div className="row">
						<div className="col-md-2 col-sm-5 col-xs-6 mar-top-15 text-lightgrey">Email:</div>
						<div className="col-md-3 col-sm-7 col-xs-6 mar-top-15 text-break"><b>medicalteam@gmail.com</b></div>
						
						<div className="col-md-2 col-sm-5 col-xs-6 mar-top-15 col-md-offset-2 text-lightgrey">Mobile No:</div>
						<div className="col-md-2 col-sm-7 col-xs-6 mar-top-15"><b>+91 9620300915</b></div>						
					</div>
					
					</div>				
					
					
				</div>
				
				</div>
	
			</div>
		</div>
		
	</div>
</div>


</div>
		
      );
 	 }
	}


ReactDOM.render(
  <Home />,
  document.getElementById('home')
);


	</script>    

  </head>
  
  <body>
  		
	<div id="home"></div>						 

  </body>
</html>