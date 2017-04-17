<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta charset="utf-8">
	
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/signUp.css" rel="stylesheet" type="text/css" />
	<title>Unizen Dashboard</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="css/atomDashboard.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="js/bootstrap.min.js"></script>	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse  col-sm-12 navbar-fixed-top  logobar">
		
		<a href="navbar-brand" style="padding: 0;"><img src="images/logo_uni.png" style="width: 250px;"></img></a>
		
	</nav>
	<div class="container-fluid col-sm-4" style="margin-left: 33%; margin-top: 8%;"> 
		<form class="form-horizontal" style="margin-top: 6%;">
			
				<h4 class="text-center" style="float: center; font-size: 25px; "><b>Please Login</b></h4><br />
				<div class="imgcontainer">
					<img src="images/login_icon.png"  alt="Avatar" class="avatar">
				</div>
				<div class="form-group" style="margin-left: 3%;">
					
					<div class="col-sm-11 input_box">
						<label class="control-label" for="email"><span class="glyphicon glyphicon-user"></span>Username:</label><input type="email" class="form-control col-sm-4" id="email" placeholder="Enter email or username">
					</div>
				</div>
			<div class="form-group" style="margin-left: 3%;">
				
				<div class="col-sm-11">  
					<label class="control-label" for="pwd"><span class="glyphicon glyphicon-lock"></span>Password:</label>
					<input type="password" class="form-control" id="pwd" placeholder="Enter password">
				</div>
			</div>
			<div class="form-group">        
			<div class=" col-sm-12 row">
				<div class="col-sm-6">
					<button type="submit" class="btn btn-blue" style="padding: 7px; margin-top: 5%;  margin-left:16%;"><b>Submit</b></button>
				</div>
				<div class="checkbox col-sm-6">
					<label style=" display: block; margin-left: 8.5%; margin-top:3%;"><b> Remember me</b><input type="checkbox" style="margin-left: 2%;mar"></label>
				</div>
				
				
			</div>
			</div>	
			<div class="form-group">  
				<div class="psw"><b>Forgot <a href="#">password?</a></b></div>
			</div>
			
			 
		
		</form>
	</div>
</body>