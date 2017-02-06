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
    <link href="css/new.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
    
	<script type="text/javascript" src="js/jquery-latest.js"></script>
	 <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
   
      <!-- React Application --> 
	<script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>  
	<script src="https://fb.me/react-15.3.0.min.js"></script>
    <script src="https://fb.me/react-dom-15.3.0.min.js"></script>
    <script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>
 
  	<script type="text/babel">

	class Home extends React.Component{
		
  	render() {
    return (
         	
  			<div className="container-fluid">
			  <nav className="navbar navbar-inverse">
    			<div className="navbar-header">
	  				<a href="adminView1"><img src="images/medical_trial.png"></img></a>
    			</div>

    <ul className="nav navbar-nav">
      <li><a href="#"><b>Home</b></a></li>
      <li className="dropdown"><a className="dropdown-toggle" data-toggle="dropdown" href="#"><b>Medical Reports</b><span class="caret"></span></a>
        <ul className="dropdown-menu">
          <li><a href="getAllergy"><span className="glyphicon glyphicon-send"><b>&nbsp;Allergies</b></span></a></li>
          <li><a href="getMedical"><span className="glyphicon glyphicon-send"><b>&nbsp;Medications</b></span></a></li>
        </ul>
      </li>
      
	</ul>
	 <ul className="nav navbar-nav navbar-right">
       <li><a href="#"><span className="glyphicon glyphicon-user"></span><b> Welcome Medical Team</b></a></li>
       <li className="log"><a href="logout"><span className="glyphicon glyphicon-log-in"></span><b>Logout&nbsp;</b></a></li>
	</ul>
</nav>
	
				<div className="row">
				<div className="col-sm-12 ">
					<div className="content-wrap">
				
									
				
					<div className="section-heading">
						<div className="row">
							<div className="col-sm-12">
								<span className="glyphicon glyphicon-info-sign"><b>&nbsp;Personal Information</b></span>
							</div>
						</div>
					</div>
					
					
					<div className="push-15">
					<div className="row">
						<div className="col-md-2 col-sm-5 col-xs-6 mar-top-15 text-lightgrey"><span className="glyphicon glyphicon-user"><b>First Name:</b></span></div>
						<div className="col-md-3 col-sm-7 col-xs-6 mar-top-15"><b>Medical</b></div>
						
						<div className="col-md-2 col-sm-5 col-xs-6 mar-top-15 col-md-offset-2 text-lightgrey"><span className="glyphicon glyphicon-user"><b>Last Name:</b></span></div>
						<div className="col-md-2 col-sm-7 col-xs-6 mar-top-15"><b>Team</b></div>						
					</div>
					
									
					
					<div className="row">
						
						<div className="col-md-2 col-sm-5 col-xs-6 mar-top-15 text-lightgrey "><span className="glyphicon glyphicon-envelope"><b>Email:</b></span></div>
						<div className="col-md-3 col-sm-7 col-xs-6 mar-top-15 text-break"><b>medicalteam@gmail.com</b></div>
						
						<div className="col-md-2 col-sm-5 col-xs-6 mar-top-15 col-md-offset-2 text-lightgrey"><span className="glyphicon glyphicon-modal-window"><b>Mobile No:</b></span></div>
						<div className="col-md-2 col-sm-7 col-xs-6 mar-top-15"><b>+91 9620300915</b></div>						
					</div>
					
					</div>				
					
					
				</div>
	     </div>
	</div>

<Footer/>
</div>

		
      );
 	 }
	}


class Footer extends React.Component{
  	render() {
    return (
 		<div className="footer-wrap">
					
					<div className="row">
					<div className="col-sm-12 text-center">
							 <p className="text-12"><b>All Content © 2017 Unizen technologies, Inc.</b></p>
 					</div>
					</div>
					
		</div>
);
 	 }
	
};
	

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