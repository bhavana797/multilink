<?php
session_start();
if(isset($_SESSION['username']))
{
?>
<!doctype html>
<html>
<head>

<!--Meta tags-->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">

<!--Font Family-->
<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>novisync</title>
<style>
	#navigation  {
  float: right;
}
	
</style>	
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#" style="font-size:38px; display: flex;">
	  <img src="images/Novisync.svg" style="width: 50px;">Novisync</a>
	<a href="logout.php" class="logout" style="text-decoration:none;color:white;" id="navigation">Logout</a>
 
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
<!--      <a class="nav-item nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
<a class="nav-item nav-link active" href="#">About</a>-->
  
    </div>
  </div>
</nav>

	<section>

		<div class="container">
			<div class="row d-flex justify-content-center mt-5">
				<div class="col-md-8 col-sm-12 d-flex justify-content-between m-3">
					<p>Novisync website</p><a href="hh.php" target="_blank"><button class="btn btn-dark">Click here</button></a>
				</div>
				<div class="col-md-8 col-sm-12 d-flex justify-content-between m-3">
					<p>Novisync cloud</p><a href="#"><button class="btn btn-dark" target="_blank">Click here</button></a>
				</div>
				<div class="col-md-8 col-sm-12 d-flex justify-content-between m-3">
					<p>Novisync chat</p><a href="#"><button class="btn btn-dark" target="_blank">Click here</button></a>
				</div>
				<div class="col-md-8 col-sm-12 d-flex justify-content-between m-3">
					<p>PTMS</p><a href="#"><button class="btn btn-dark" target="_blank">Click here</button></a>
				</div>
				<div class="col-md-8 col-sm-12 d-flex justify-content-between m-3">
					<p>Git</p><a href="#"><button class="btn btn-dark" target="_blank">Click here</button></a>
				</div>
				<div class="col-md-8 col-sm-12 d-flex justify-content-between m-3">
					<p>Immigration</p><a href="#"><button class="btn btn-dark" target="_blank">Click here</button></a>
				</div>
			</div>
		</div>
	</section>
	<footer class="bg-dark fixed-bottom d-flex text-light justify-content-center align-items-center" style="height: 50px"> Copyrights@All Rights Reserved novisync</footer>
</body>
</html>
<?php
}
else
{
	echo '<script>window.location.href="index.php";</script>';
}
?>