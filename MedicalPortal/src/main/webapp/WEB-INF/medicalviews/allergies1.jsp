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

	class Allergy extends React.Component{
		constructor() {
       	super();
        this.state = { data: [] };
 				
		};

componentDidMount(){
fetch('http://localhost:8088/MedicalPortal/getAllergies', { 
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
												<a className="hreflink"><b>&nbsp;&nbsp;Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><span>John</span></a>
												<a className="hreflink"><b>&nbsp;Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><span>25</span></a>
												<a className="hreflink"><b>&nbsp;&nbsp;Gender:&nbsp;&nbsp;&nbsp;</b><span>Male</span></a>
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

							<div className="col-sm-10">
								<table className="table table-striped">
									<thead>
      									<tr>
        									<th>AllergiesName</th>
        									<th>AllergiesType</th>
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
		</div>
	
	);
   }
}
			
class TableRow extends React.Component{
  	render() {
    return (
 		<tr>
            <td>{this.props.data.AllergyName}</td>
            <td>{this.props.data.AllergyType}</td>
			<td>{this.props.data.CreatedDate}</td>
			<td>{this.props.data.EffectiveDate}</td>
         </tr>
);
 	 }
	
};


ReactDOM.render(
  <Allergy />,
  document.getElementById('allergyApp')
);


	</script>    

  </head>
  
  <body>
  		
	<div id="allergyApp"></div>						 

  </body>
</html>