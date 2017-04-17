<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <title>Unizen Dashboard || Empowering Innovation</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <!-- add styles -->
	
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<link href="css/signUp.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/atomDashboard.css"> 	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" 
		integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
	<script type="text/javascript" src="../js/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scriptpick.js"></script>
	<script src="js/barchart.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.2/jquery.min.js"></script>
	<script src="js/pichart.js"></script>
	
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/BootSideMenu.css">

    <!--[if lt IE 9]>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv-printshiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    

    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../js/BootSideMenu.js"></script>

</head>
<body>
	<nav class="navbar navbar-inverse col-md-12 col-xs-12 col-lg-12 col-sm-12 navbar-static-top  logobar"  style="position:fixed;">
		
		<div class="navbar-header">
			<a href="navbar-brand" style="padding: 0;"><img src="../img/logo_uni.png" style="width: 200px;"></img></a>
		</div>
		<ul id="hide" class="nav navbar-nav navbar-right" style="font-size: 15px;" >
			<li><a href="#"><span class="glyphicon glyphicon-user"></span><b> Welcome Unizen</b></a></li>
			<li class="log"><a href="logout"><span class="glyphicon glyphicon-log-in"></span><b>Logout</b></a></li>
		</ul>
	</nav>

    <!-- Main component for a primary marketing message or call to action -->
  

    

<div class="content-wrapper">
<!--Test -->
<div id="test" style="background-color">
   
	<ul class="nav navbar-inverse nav-pills affix nav-stacked  main-menu" style="height: 100%; width: 14.90%; top: 0;" >
		<li class="mar-top-70" id="menu1" ><a href="#" style=""><span class="rowitem"  style="color: grey;" ><b><span class="glyphicon glyphicon-dashboard"></span>&nbsp;Dashboard</b></span></a></li>
		<li id="menu2"><a href="#" style=""><span class="rowitem" style="color: grey;"><b><span class="glyphicon glyphicon-equalizer"></span>&nbsp;Charts</b></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right" style="color: grey;"></span></a></li>
		<li id="menu3"><a href="#" style=""><span class="rowitem"  style="color: grey;"><b><span class="glyphicon glyphicon-phone"></span>&nbsp;Contact Us</b></span></a></li>
		<li id="menu4"><a href="#" style=""><span class="rowitem"  style="color: grey;"><b><span class="glyphicon glyphicon-exclamation-sign"></span>&nbsp;Help</b></span></a></li>
	</ul>
<!--/Test -->
</div>
<div class="wrapper">
<div class="page-main-heading row overflow-hidden" id="popup">
	<div class="col-sm-7 mar-top-45" >
		<h3 class="text-uppercase text-regular text-left text-blue"><b>&nbsp;&nbsp;&nbsp;&nbsp;LORA Dashboard&nbsp;&nbsp;</b></h3>
	</div>
	
		<div class="col-sm-5 mar-top-70  text-right">
			<button class="btn btn-blue font-14" onClick="location.reload();"><span class="glyphicon glyphicon-refresh"></span><b>&nbsp;&nbsp;REFRESH</b></button>
			<a href="dashboard"><button class="btn btn-blue font-14"><span class="glyphicon glyphicon-home"></span><b>&nbsp;&nbsp;&nbsp;HOME</b></button></a>
		</div>
		
</div>

<div class="list-group mar-top-35">
	<button class=" btn btn-blue select-box"><b>Rajhasthan &nbsp;<span class="caret"></b></span></button>
	<button class=" btn btn-blue"><b>Gandhinagar &nbsp;<span class="caret"></b></span></button>
	<button class=" btn btn-blue"><b>Area &nbsp;<span class="caret"></b></span></button>
	<button class=" btn btn-blue"><b>Place &nbsp;<span class="caret"></b></span></button>
	<button id="datepicker" class=" btn btn-blue"><b>FromDate &nbsp;<span class="caret"></b></span></button>
	<button class=" btn btn-blue"><b>ToDate &nbsp;<span class="caret"></b></span></button>
	<button class=" btn btn-blue"><b>Submit &nbsp;</b></span></button>

</div>
</div>
<br />
<br />
<div id="graphs" class="container-fluid">
<div  class="row mar-top-5" style="margin-left: 7%;">
	<div class="content-wrapper">
		<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
			<div class="white-box">
				<h6 class="text-uppercase text-semi-bold font-14"><img src="../img/barchart.png">&nbsp;&nbsp; <b>Water Consumption in BarGraph</b></h6> 
				<div id="graphDiv1" style="height:245px;">
					<input type="hidden" id="barVal" value="hi">
				</div>
					
			</div>		
		</div>	
	</div>
	
	<div class="content-wrapper">
		<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6" >
			<div class="white-box">
			    <h6 class="text-uppercase text-semi-bold font-14"><img src="../img/pi.jpg">&nbsp;&nbsp; <b>Pi Chart-Water Consumption</b></h6>  
			    <canvas class="left" id="chart" width="400" height="145"></canvas>
			      					
				<table id="chartData" class="table table-bordered">
			    	<thead>
						<tr>
							<th style="color: #0DA068" class="text-left" width="20%">3/23/2017</th>
							<th style="color: #194E9C" class="text-left" width="20%">3/24/2017</th>
							<th style="color: #ED9C13" class="text-left" width="20%">3/25/2017</th>
							
						</tr>
			    	</thead>
			   		<tbody>
			      		<tr>
							<td style="color: #0DA068">400 ltr</td>
							<td style="color: #194E9C">450 ltr</td>	
							<td style="color: #ED9C13">600 ltr</td>
							
			     		</tr> 
			  		</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div  class="row mar-top-20" style="margin-left: 7%;">
	<div class="content-wrapper">
		<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
			<div class="white-box">
				<h6 class="text-uppercase text-semi-bold font-14"><img src="../img/stream.jpg">&nbsp;&nbsp; <b>Streamgraph</b></h6> 
				<svg width="600" height="180"></svg>
				<button class="btn btn-info"  onclick="transition()">Update</button>
				<script src="https://d3js.org/d3.v4.min.js"></script>
			</div>		
		</div>	
		<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
			<div class="white-box">
				<h6 class="text-uppercase text-semi-bold font-14"><img src="../img/linegraph.png">&nbsp;&nbsp; <b>Line Chart-Water</b></h6> 
					<div id="curve_chart" style="width: 700px; height: 240px"></div>
			</div>		
		</div>	
	</div>
</div>
</div>
<script type="text/javascript">
	var n = 20, // number of layers
    m = 200, // number of samples per layer
    k = 10; // number of bumps per layer


	var stack = d3.stack().keys(d3.range(n)).offset(d3.stackOffsetWiggle),
		layers0 = stack(d3.transpose(d3.range(n).map(function() { return bumps(m, k); }))),
		layers1 = stack(d3.transpose(d3.range(n).map(function() { return bumps(m, k); }))),
		layers = layers0.concat(layers1);

	var svg = d3.select("svg"),
		width = +svg.attr("width"),
		height = +svg.attr("height");

	var x = d3.scaleLinear()
		.domain([0, m - 1])
		.range([0, width]);

	var y = d3.scaleLinear()
		.domain([d3.min(layers, stackMin), d3.max(layers, stackMax)])
		.range([height, 0]);

	var z = d3.interpolateCool;

	var area = d3.area()
		.x(function(d, i) { return x(i); })
		.y0(function(d) { return y(d[0]); })
		.y1(function(d) { return y(d[1]); });
	
	svg.selectAll("path")
		.data(layers0)
		.enter().append("path")
		.attr("d", area)
		.attr("fill", function() { return z(Math.random()); });

	function stackMax(layer) {
		return d3.max(layer, function(d) { return d[1]; });
	}

	function stackMin(layer) {
		return d3.min(layer, function(d) { return d[0]; });
	}

	function transition() {
	  var t;
	  d3.selectAll("path")
		.data((t = layers1, layers1 = layers0, layers0 = t))
		.transition()
		  .duration(2500)
		  .attr("d", area);
	}

	// Inspired by Lee Byron’s test data generator.
	function bumps(n, m) {
	  var a = [], i;
	  for (i = 0; i < n; ++i) a[i] = 0;
	  for (i = 0; i < m; ++i) bump(a, n);
	  return a;
	}
	
	

	function bump(a, n) {
	  var x = 1 / (0.1 + Math.random()),
		  y = 2 * Math.random() - 0.5,
		  z = 10 / (0.1 + Math.random());
	  for (var i = 0; i < n; i++) {
		var w = (i / n - y) * z;
		a[i] += x * Math.exp(-w * w);
	  }
	}
    $(document).ready(function () {
        $('#test').BootSideMenu({
            side: "left"
        });
		 var value=document.getElementById("barVal");
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
			
		graph.update([Math.random()*30, Math.random()*30,Math.random()*30,Math.random()*30]);
		
    });
	 google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Date', 'GandhinagarCampus', 'BSNL','BajajEnclava'],
          ['24/3/2017',  1000,      400,     600],
          ['25/3/2017',  1170,      460,		780],
          ['26/3/2017',  660,       1120,	926],
          ['27/3/2017',  1030,      540,		643]
        ]);

        var options = {
          title: 'Water Reports',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
	
</script>
</body>
</html>