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
    
    <title>Medication Home</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
   
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/custom.css" rel="stylesheet">
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    
    
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

	class Medication extends React.Component{
		constructor() {
       	super();
        this.state = { data: [] };
 		
		};

componentDidMount(){
fetch('http://localhost:8088/MedicalPortal/getMedication', { 
	    method: 'GET',
		headers: {'Content-Type': 'application/json'}
        }).then(function(response) {

				console.log(response.headers.get('Content-Type'));
 				console.log(response.headers.get('Date'));
  				console.log(response.status);
 				console.log(response.statusText);
       	   return response.json();
      }).then( (json) => {
                        this.setState({data: json});
        }).then(function(body) {
		     console.log(body);
				//alert(eval(JSON.stringify(body)));
				//alert(JSON.parse(JSON.stringify(body)));
		return body;
      }).catch(function(ex) {
    	     console.log('parsing failed', ex);
  	  });



}; 



  	render() {
    return (
        

		<div className="container-fluid" >
		<div className="row">
				<div className="col-sm-12 ">
			<nav className="navbar navbar-inverse">
				<div className="navbar-header">
	  				<a href="adminView1"><img src="images/medical_trial.png"></img></a>
    			</div>

    <ul className="nav navbar-nav">
      <li><a href="adminView1"><b>Home</b></a></li>
      <li className="dropdown"><a className="dropdown-toggle" data-toggle="dropdown" href="#"><b>Medical Reports</b><span class="caret"></span></a>
        <ul className="dropdown-menu">
          <li><a href="getAllergy"><span className="glyphicon glyphicon-send"><b>&nbsp;Allergies</b></span></a></li>
          <li><a href="#"><span className="glyphicon glyphicon-send"><b>&nbsp;Medications</b></span></a></li>
        </ul>
      </li>
      
	</ul>
	 <ul className="nav navbar-nav navbar-right">
       <li><a href="#"><span className="glyphicon glyphicon-user"></span><b> Welcome Medical Team</b></a></li>
       <li className="logout"><a href="logout"><span className="glyphicon glyphicon-log-in"></span><b>Logout</b></a></li>
	</ul>
	</nav>


	</div>
	</div>

				<div className="row " >
							<div className="col-sm-12">
								<table className="table table-striped">
									<thead>
      									<tr>
        									<th>MedicationName</th>
        									<th>MedicationType</th>
        									<th>CreatedDate</th>
											<th>EffectiveDate</th>
      			    					</tr>
    								</thead>
              				  			<tbody>
                  							{this.state.data.map((allergy, i) => <TableRow key = {i} data = {allergy} />)}
               				 		 	</tbody>
            					</table>
							</div>
				</div>
<Footer/>
</div>
	);
   }
};
			
class TableRow extends React.Component{
  	render() {
    return (
 		<tr>
            <td>{this.props.data.MedicationName}</td>
            <td>{this.props.data.MedicationType}</td>
			<td>{this.props.data.CreatedDate}</td>
			<td>{this.props.data.EffectiveDate}</td>
         </tr>
);
 	 }
	
};


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
  <Medication />,
  document.getElementById('medicationApp')
);


	</script>    

  </head>
  
  <body>
  		
	<div id="medicationApp"></div>						 

  </body>
</html>