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
    <link href="css/custom.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-latest.js"></script>
	 <script src="js/bootstrap.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
		     
   	 <!-- React Application --> 
	<script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>  
	<script src="https://fb.me/react-15.3.0.min.js"></script>
    <script src="https://fb.me/react-dom-15.3.0.min.js"></script>
    <script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>
    
  	<script type="text/babel">
class App extends React.Component{
		constructor() {
       	super();
        this.state = { data: {} };
 		this.login = this.login.bind(this);
	
		};

			login(e){
			e.preventDefault();
			
			var uname=this.refs.uname.value;
			var pass=this.refs.pass.value;

			return  fetch('http://localhost:8088/MedicalPortal/userLogin', { 
	    method: 'POST',
		headers: {'Content-Type': 'application/json;charset=utf-8'},
		body: JSON.stringify({
   		 'uname': uname,
			'pass' : pass
 		 })
        }).then(response => response.json().then(body => ({ response, body })))
      .then(({ response, body }) => {
        if (response.ok) {
				console.log(response.headers.get('Content-Type'));
 				console.log(response.headers.get('Date'));
  				console.log(response.status);
 				console.log(response.statusText);
          window.open('http://localhost:8088/MedicalPortal/adminView1', '_self');
        }
      });


};
	
  	render() {
    return (
        <div className="wrapper">
		 <p>{this.state.data.StatusCode}</p>
		  
	<div className="container">
		<div className="login-input-wrap">
			<div className="login-input-border-wrap">
			<form onSubmit={this.login} name="user_validation_form" id="user_validation_form" method="post">
				<div className="row">
					<div className="col-sm-12">
					<h6 className="text-regular text-uppercase" ><b><i>Please Login</i></b></h6>
						
						<input type="text" name="uname" ref="uname" id="uname" placeholder="Login ID" className="form-control login-fields username mar-top-20" />
						<input type="password" name="pass" ref="pass" id="pass" placeholder="Password"  className="form-control login-fields password mar-top-10" />
						
					</div>
				</div>
				
				<div className="row">
					<div className="col-sm-6 mar-top-25">
						<a href="#" className="text-grey link-underline">Forgot Password?</a>
					</div>
					
					<div className="col-sm-6 mar-top-20 text-right">
						<input type="submit" value="Login" className="btn btn-blue"/>
					</div>
					
					
				</div>	
			</form>		
			</div>
		</div>
	</div>
</div>
			
         
      );
  }
};






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