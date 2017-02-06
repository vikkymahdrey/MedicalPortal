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
    
    <title>Allergies Home</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
   <link href="css/demo.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
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
        

		<div className="container-fluid" >

				<div className="row">
				<div className="col-sm-12 ">
				
					<div className="art_box_logo">
						<a href="adminView"><img src="images/medical_trial.png"/></a>
				
						</div>

					<div className="art_box">
						<div className="imgNav text-right"><b><img src="images/user_iocn_header.png" className="imgLogout"/>&nbsp;Welcome  Medical Team  &nbsp;&nbsp;&nbsp;<a href="logout"><img src="images/logout_icon_header.png" />&nbsp;Log Out</a></b></div>
					</div>
					
					
				
				
				
				</div>	
				</div>
	<div className="col-sm-12 ">
				
			<div className="col-sm-12 text-right">
					<img src="" />&nbsp;
				</div>
			</div>		
				<div className="row " >
							<div className="col-sm-2 ">
								<div className="nav">
								<ul>
									<li className="NavBar" >
												<a href="#" className="rowitem">My Information</a>
											<div className="dropdown-content">
												<a><b>&nbsp;&nbsp;Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><span>John</span></a>
												<a><b>&nbsp;Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><span>25</span></a>
												<a><b>&nbsp;&nbsp;Gender:&nbsp;&nbsp;&nbsp;</b><span>Male</span></a>
											</div>
							
									</li>
								</ul>

								<ul>
							 		
										<li><a  href="#" className="rowitem"><i className="material-icons" >inbox</i>Dashboard</a></li>

										<li><a href="fetchAllergy"  className="rowitem"><i className="material-icons">flag</i>Allergies&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
										<li><a href="fetchMedications" className="rowitem"><i className="material-icons" >local_hospital</i>Medication</a></li>
									
								</ul>
							</div>
							</div>	

						</div>
		</div>
	
	);
   }
}
			



ReactDOM.render(
  <Home />,
  document.getElementById('homeApp')
);


	</script>    

  </head>
  
  <body>
  		
	<div id="homeApp"></div>						 

  </body>
</html>