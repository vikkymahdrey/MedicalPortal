<%-- 
    Document   : React UI
    Created on : 25 Jan, 2017, 1:00:11 PM
    Author     : Ashok Babu S <ashok@unizentechnologies.com>
    Copyright  : Copyright (C) by Unizen Technologies  
--%>


<!DOCTYPE html>
<html lang = "en">

   <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Medical React App</title>
    
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/demo.css" rel="stylesheet">
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script type="text/javascript" src="js/jquery-latest.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
	 <script src="js/bootstrap.min.js"></script>
	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
	
		     
   	 <!-- React Application --> 
	<script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>  
	<script src="https://fb.me/react-15.3.0.min.js"></script>
    <script src="https://fb.me/react-dom-15.3.0.min.js"></script>
    <script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>
    
  	<script type="text/babel">
class App extends React.Component {
   render() {
		
      return (
				<div>
			<div className="container-fluid" >
				<div className="row">
					<div className="art_box_logo">
						<img src="images/medical_trial.png"/>
					</div>
					<div className="art_box"/>
					
				</div>

				<div className="row">
					
				<div className="col-sm-12 text-right">
					<img src="images/user_iocn_header.png" />&nbsp;Welcome  Medical Team  &nbsp;&nbsp;&nbsp;<a href="logout"><img src="images/logout_icon_header.png" />&nbsp;Log Out</a>
				</div>
				
				</div>
			
					
				<div className="row content" >
							<div className="col-sm-2 sidenav">
								
								<ul>
							 		<div>
										<li className="NavBar1" ><a  href="#" className="rowitem"><i className="material-icons" >inbox</i>Dashboard</a></li>
										<li className="NavBar1"><a  href="#" className="rowitem"><i className="material-icons" >add_alert</i>Vital Signs</a></li>
										<li className="NavBar1" ><a href="fetchAllergy"  className="rowitem"><i className="material-icons">flag</i>Allergies&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
										<li className="NavBar1"><a href="fetchMedications" className="rowitem"><i className="material-icons" >local_hospital</i>Medication</a></li>
									</div>
								</ul>
							</div>	

							
				</div>
		</div>
					
			</div>
      );
   }
}




ReactDOM.render(
  <App />,
  document.getElementById('medicalApp')
);

  	</script> 

   </head>




   <body >
         <div id ="medicalApp"></div>
         
   </body>
   
   

</html>