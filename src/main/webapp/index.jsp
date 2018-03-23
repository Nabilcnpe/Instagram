<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.google.appengine.api.users.*" %>
<% UserService userService = UserServiceFactory.getUserService(); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<!-- AngularJS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.1/angular.min.js"></script>
		<script src="JS/app.js"></script>
		<script src="https://rawgit.com/heresy/angularjs-social-login/master/angularjs-social-login.js"></script>
		
		<!-- Custom Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	 	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		
		<!-- Theme CSS -->
	    <link rel="stylesheet" href="assets/css/style.css" />
	    <script src="JS/ang.js"></script>
	    
		<!-- Theme Made By www.w3schools.com - No Copyright -->
		<title>Instagram</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<!-- 		<link rel="stylesheet" type="text/css" href="assets/css/insta.css"> -->
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
</head>


<body ng-app="myApp" ng-controller="SocialLoginController" id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">INSTAGRAM</a>
<!-- 				<input type="text" class="_avvq0 _o716c" placeholder="Rechercher" value=""> -->
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
				<% if (userService.getCurrentUser() != null) { %>
				<li><a href="#add"><img src="images/add.png"></a></li>
				<li><a href="#coco"><img src="images/insta2.png"></a></li>
				<li><a href="<%= userService.createLogoutURL("/") %>">Se deconnecter</a></li>
				<li><a href="#github"><%= userService.getCurrentUser().getNickname() %></a></li>
				<% } %>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container text-center">
	<% if (userService.getCurrentUser() == null) { %>
		<p style="color=black">Veuillez vous authentifier : <br>
<!-- 		<button g-login type="button" class="btn btn-gplus"><i class="fa fa-google-plus left"></i>  Se connecter avec google</button></p> -->
		<a g-login href="<%= userService.createLoginURL("/") %>" class="btn btn-primary">Se connecter avec google</a></p>		
  		<% }
		else { %>
  	<% } %>
	</div>
	
	<div id="github" class="container text-center">
  		<h3>Github Link below :</h3>
  		<div class="row" style="text-align:center">
	    	<div class="col-sm-4"></div>
	    	<div class="col-sm-4">
	        	<h2><a href="https://github.com/Nabilcnpe/Instagram">Github</a></h2>
	   	 	</div>
	  	</div>
	</div>	
   
	<!--     Footer -->
	<footer  class="footer fixed-bottom">
	</footer>
  	
    <!-- Bootstrap Core JavaScript -->
    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="/bower_components/angular/angular.min.js"></script>
    <script src="/bower_components/angular-route/angular-route.min.js"></script>
    <script src="/bower_components/angular-animate/angular-animate.min.js"></script>
    <script src="/bower_components/angular-sanitize/angular-sanitize.min.js"></script>
    <script src="/bower_components/angular-resource/angular-resource.min.js"></script>

</body>
</html>