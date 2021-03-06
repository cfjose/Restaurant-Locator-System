<?php
defined('BASEPATH') OR exit('No direct script access allowed');
if (isset($this->session->userdata['logged_in'])) {
	header('location: http://localhost/restaurant_locator_system/index.php/main');
} else {
	//Do nothing
}
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Restaurant Locator System | Home</title>

	<!-- Bootstrap -->
	<link href="http://localhost/restaurant_locator_system/css/bootstrap.min.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<style>
		/* Move down content because we have a fixed navbar that is 50px tall */
		/* GLOBAL STYLES
-------------------------------------------------- */
		/* Padding below the footer and lighter body text */

		body {
			padding-bottom: 40px;
			color: #5a5a5a;
		}

		/* CUSTOMIZE THE NAVBAR
        -------------------------------------------------- */

		/* Special class on .container surrounding .navbar, used for positioning it into place. */
		.navbar-wrapper {
			position: absolute;
			top: 0;
			right: 0;
			left: 0;
			z-index: 20;
		}

		/* Flip around the padding for proper display in narrow viewports */
		.navbar-wrapper > .container {
			padding-right: 0;
			padding-left: 0;
		}
		.navbar-wrapper .navbar {
			padding-right: 15px;
			padding-left: 15px;
		}
		.navbar-wrapper .navbar .container {
			width: auto;
		}

		/* CUSTOMIZE THE CAROUSEL
        -------------------------------------------------- */

		/* Carousel base class */
		.carousel {
			height: 660px;
			margin-bottom: 60px;
		}
		/* Since positioning the image, we need to help out the caption */
		.carousel-caption {
			z-index: 10;
		}

		/* Declare heights because of positioning of img element */
		.carousel .item {
			height: 660px;
			background-color: #777;
		}
		.carousel-inner > .item > img {
			position: absolute;
			top: 0;
			left: 0;
			min-width: 100%;
			height: 660px;
		}

		div.navbar-header{
			width:700px;
		}

		nav.navbar-inverse{
			background-color: rgba(34,34,34,0.8);
		}

        div.body-img, div.body-content{
            display: inline-block;
        }

        div.body-content{
            margin-left:40px;
        }

        div.body{ margin-left:120px; margin-top: 200px;}


		/* RESPONSIVE CSS
        -------------------------------------------------- */

		@media (min-width: 768px) {
			/* Navbar positioning foo */
			.navbar-wrapper {
				margin-top: 20px;
			}
			.navbar-wrapper .container {
				padding-right: 15px;
				padding-left: 15px;
			}
			.navbar-wrapper .navbar {
				padding-right: 0;
				padding-left: 0;
			}

			/* The navbar becomes detached from the top, so we round the corners */
			.navbar-wrapper .navbar {
				border-radius: 4px;
			}

			/* Bump up size of carousel content */
			.carousel-caption p {
				margin-bottom: 20px;
				font-size: 21px;
				line-height: 1.4;
			}

			.featurette-heading {
				font-size: 50px;
			}
		}

		@media (min-width: 992px) {
			.featurette-heading {
				margin-top: 120px;
			}
		}

		footer{
			width:1140px;
			margin-left:80px;
		}
	</style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Restaurant Locator System</a>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="http://localhost/restaurant_locator_system/">Home</a></li>
					<li><a href="http://localhost/restaurant_locator_system/index.php/about">About</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<form class="navbar-form navbar-right" action="http://localhost/restaurant_locator_system/index.php/user_authentication/user_login_process">
				<button type="submit" class="btn btn-success">Sign in</button>
				<a href="http://localhost/restaurant_locator_system/index.php/signup" class="btn btn-primary">Sign up</a>
			</form>
		</div><!--/.navbar-collapse -->
	</div>
</nav>

<!-- Carousel
    ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img class="first-slide" src="http://localhost/restaurant_locator_system/res/images/table.jpg" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Follow your Interests.</h1>
					<p>With Restaurant Locator System, the search for your favorite restaurants is at your fingertips</p>
					<p><a class="btn btn-lg btn-primary" href="http://localhost/restaurant_locator_system/index.php/signup" role="button">Sign up today</a></p>
				</div>
			</div>
		</div>
		<div class="item">
			<img class="second-slide" src="http://localhost/restaurant_locator_system/res/images/table2.jpg" alt="Second slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Restaurant Ratings and Reviews</h1>
					<p>Never let yourself be disappointed again with restaurant services. Read reviews and see who best fits your cravings</p>
					<p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
				</div>
			</div>
		</div>
		<div class="item">
			<img class="third-slide" src="http://localhost/restaurant_locator_system/res/images/devices.png" alt="Third slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Responsivity</h1>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
					<p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
				</div>
			</div>
		</div>
	</div>
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div><!-- /.carousel -->

<div class="body">
    <div class="body-img">
        <img src="http://localhost/restaurant_locator_system/res/images/map.png" width="200px" height="150px"/>
    </div>
    <div class="body-content">
        <h4>Location</h4>
        <p>Sample Description Here</p>
    </div>
</div>

<div class="body">
    <div class="body-img">
        <img src="http://localhost/restaurant_locator_system/res/images/fstar.png" width="200px" height="150px"/>
    </div>
    <div class="body-content">
        <h4>Ratings</h4>
        <p>Sample Description Here</p>
    </div>
</div>
<!-- FOOTER -->
<footer>
	<p class="pull-right"><a href="#">Back to top</a></p>
	<p>&copy; 2016 IntelliDev, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="http://localhost/restaurant_locator_system/js/bootstrap.min.js"></script>
</body>
</html>