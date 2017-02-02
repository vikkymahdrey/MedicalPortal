<%@page import="java.util.*"%>
<%@page import="com.team.test.domain.*"%>
<%@page import="org.displaytag.decorator.TotalTableDecorator"%>
<%@page import="org.displaytag.decorator.MultilevelTotalTableDecorator"%>
<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@ page buffer = "900kb" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>Medical</title>
	
	<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link href="css/bootstrap.min.css" rel="stylesheet"> -->
 	<link rel="stylesheet" href="css/displaytag.css" media="all"> 
    <!-- <link href="css/custom_siemens.css" rel="stylesheet"> -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <!-- <link href="css/medical.css" rel="stylesheet" type="text/css" /> -->
<!--     <link href="css/custom.css" rel="stylesheet"> -->
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	
</head>
<body>
	
						
<div class="container-fluid">
	 <div class="well well-sm">Header</div> 
	
	<div class="row content">
	   <div class="col-sm-2 sidenav">
	      <ul class="nav nav-pills nav-stacked">
	        <li class="active"><a href="#section1">DashBorad</a></li>
	        <li><a href="/MightyCloud/allergiesInfo">Allergies</a></li>
	        <li><a href="#section3">Medication</a></li>
	        <li><a href="#section3">Diagnosis</a></li>
	        <li><a href="#section3">History</a></li>
	      </ul><br>
		</div>	
		
	<% AdminUser adminUser=(AdminUser)request.getSession().getAttribute("adminUser");
			String fname1=("Allergies:").concat(new Date().toString()).concat(".csv");
			String fname2=("Allergies:").concat(new Date().toString()).concat(".xls");
			String fname3=("Allergies:").concat(new Date().toString()).concat(".xml");
			List<Allergy> allergiesList=(List<Allergy>)request.getAttribute("allergiesList");
	
	%> 
		<div class="col-sm-10">
      		
		 <display:table class="alternateColor" name="<%=allergiesList%>" id="row"
			export="true" requestURI="" defaultsort="1" defaultorder="descending" pagesize="10">
				<display:column  property="id" title="ID" sortable="true" headerClass="sortable" />
							
				<display:column   property="allergiesName" title="AllergyName" sortable="true" headerClass="sortable" />
				
				<display:column   property="allergiesType" title="AllergyType" sortable="true" headerClass="sortable"/>
				
				<display:column  property="createdDate" title="Created_Date" 	format="{0,date,dd-MM-yyyy}" sortable="true" headerClass="sortable" />
				
     		    <display:column  property="effectiveDate" title="Effective_Date" 	format="{0,date,dd-MM-yyyy}" sortable="true" headerClass="sortable" />
				
			 	<display:setProperty name="export.csv.filename" value="<%=fname1%>" />
				<display:setProperty name="export.excel.filename" value="<%=fname2%>" />
				<display:setProperty name="export.xml.filename" value="<%=fname3%>" /> 
		</display:table>
		
	   </div>
		
	</div>
</div>	 
<footer class="container-fluid">
<div class="well well-sm">Footer</div> 
</footer>
	<!--<div class="art_box_logo" />
	<div class="art_box" style={"background-color:#FFA500;margin-bottom:0px";} >
		
	</div>
	
	</div>
	<p class="solid" style="display:inline;">
		<div id="main_menu">
			<ul id="main_list">
			<div class="sub">
				<ul>
					<li><a href="#Dashboard_show" id="sub" ><i class="material-icons" style="font-size:28px;color:#FFA500;">add_alert</i>Show Dash</a></li>
										
				</ul>
			</div>
				<li style="font-size:25px;"><a class="active" href="#Dashboard" onclick="document.getElementById('sub').style.display='block'"><i class="material-icons" style="font-size:45px;color:#FFA500;">inbox</i> Dashboard</a>
				</li>
				<li style="font-size:25px;"><a href="#VitalSigns"><i class="material-icons" style="font-size:45px;color:#FFA500;">add_alert</i>VitalSigns</a></li>
				<li style="font-size:25px;"><a href="#Allergies"><i class="material-icons" style="font-size:45px;color:#FFA500;">flag</i>Allergies</a></li>
				<li style="font-size:25px;"><a href="#Medications"><i class="material-icons" style="font-size:45px;color:#FFA500;">local_hospital</i>Medications</a></li>
			</ul>
		</div>
		
	<div style="padding:20px;margin-top:0px;background-color:#EEF0EF;height:1500px;"/>
</p> -->
	   
</body>
</html>
