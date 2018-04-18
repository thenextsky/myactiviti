<!DOCTYPE html>
<#assign base=request.contextPath>
<html lang="en">
	<head>
		<title>这是标题</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type='text/javascript' src='${base}/js/jquery-3.3.1.min.js'></script>
		<script type='text/javascript' src='${base}/bootstrap-3.3.7-dist/js/bootstrap.min.js'></script>
		<link rel='stylesheet' href='${base}/bootstrap-3.3.7-dist/css/bootstrap.min.css' type='text/css' />
	</head>
	<body>
		<!-- Static navbar -->
	    <nav class="navbar navbar-default navbar-static-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="#">My Activiti</a>
	        </div>
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav navbar-right">
	            <li class="active"><a href="${base}/user/logout">退出</a></li>
	            <li><a href="#">${user.name}</a></li>
	          </ul>
	        </div>
	      </div>
	    </nav>
	
	
	    <div class="container">
	
	      <!-- Main component for a primary marketing message or call to action -->
	      <div class="jumbotron">
	        <h1>Navbar example</h1>
	        <p>This example is a quick exercise to illustrate how the default, static and fixed to top navbar work. It includes the responsive CSS and HTML, so it also adapts to your viewport and device.</p>
	        <p>To see the difference between static and fixed top navbars, just scroll.</p>
	        <p>
	          <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
	        </p>
	      </div>
	
	    </div> <!-- /container -->
	</body>
</html>