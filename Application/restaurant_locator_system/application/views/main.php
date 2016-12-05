<?php
defined('BASEPATH') OR exit('No direct script access allowed');
if (isset($this->session->userdata['logged_in'])) {
    $_SESSION['username'] = $username = ($this->session->userdata['logged_in']['username']);
    $email = ($this->session->userdata['logged_in']['email']);
} else {
    header("location: http://localhost/restaurant_locator_system/index.php/login");
}
?><!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
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

        .navbar-brand{
            margin-top:5px;
            margin-bottom:5px;
        }

        .first-slide{
            filter: brightness(50%);
        }

        .user{
            margin-left:350px;
            margin-top:6px;
        }

        h3, h4, h5 {
            margin: 0;
            margin-left:200px;
            padding: 0;
            height: 45px;
            padding-top: 95px;
            color: #fff;
            font-size: 3.0em;
            -webkit-transform: translate3d(0,0,0);
            font-weight: bold;
            font-family: "SerifaBT-Light",Georgia,"Times New Roman",Times,serif;;
            text-rendering: optimizelegibility;
            z-index: 10;
            color: white;
        }

        h3{ padding-top: 200px;}
        h5{ font-size:2.0em; padding-top:60px;}

        #search {
            position: absolute;
            z-index: 9;
            margin-left:200px;
            padding-top:75px;
        }
        #search form {
            background-color: #fff;
            border-radius: 5px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            padding: 10px;
            box-shadow: 0px 1px 1px rgba(0,0,0,0.25), 0px 0px 88px rgba(0,0,0,0.25);
            -webkit-transform: translate3d(0,0,0);
            overflow: hidden;
        }

        #search input {
            border: 0;
            font-size: 1.75em;
            float: left;
            line-height: 25px;
            height: 25px;
            margin-top: 6px;
            outline: 0;
            width: 450px;
        }
        #search #go {
            width: 40px;
            height: 40px;
            text-indent: -9999em;
            background: url(http://localhost/restaurant_locator_system/res/images/search.svg) no-repeat;
            margin: 0;
            padding: 0;
            float: right;
            font-size: 0;
            display: block;
            line-height: 0;
            margin-left: 10px;
        }
        #search form {
            background-color: #fff;
            border-radius: 5px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            padding: 10px;
            box-shadow: 0px 1px 1px rgba(0,0,0,0.25), 0px 0px 88px rgba(0,0,0,0.25);
            -webkit-transform: translate3d(0,0,0);
            overflow: hidden;
        }

        .cuititle {
            font-family: Cambria;
            font-size: 20px;
            padding-top: 8px;
            margin:auto;
        }

        h2 {
            text-align: center;
            display: block;
            font-family: 'Cambria';
            font-size: 30px;
            font-weight: 400;
            color: #DEB675;
        }
        h2 em {
            font-size: 60px;
            font-weight: bold;
            color: #DEB675;
            font-family: 'Yesteryear';
        }

        /* RESPONSIVE CSS
        -------------------------------------------------- */

        @media (min-width: 768px) {
            /* Navbar positioning foo */
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
            margin:auto;
        }

    </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Restaurant Locator System</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <a href="http://localhost/restaurant_locator_system/index.php/user_authentication/logout"><img src="http://localhost/restaurant_locator_system/res/images/user.png" width="50px" height="50px" class="user"/></a>
        </div>
    </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="http://localhost/restaurant_locator_system/res/images/restaurant-ambiance.jpg" alt="First slide">
            <h3>Welcome, <?php echo $username; ?>!</h3>
            <h4 class="welcome">Are you hungry? </h4><br />
            <h5>Find the affordable restaurants nearby. </h5>
            <div id="search">
                <form action="search" method="get">
                    <input id="keyword" name="q" placeholder="Search for city or restaurant name.." class="ui-autocomplete-input" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true">
                    <input id="go" type="submit" value="Search" name="search">
                </form>
            </div>
        </div>
    </div>

    <div style="text-align: center;">
        <h2> Suggested <br /><em> Cuisines </em> </h2>
        <div style="float: left; width: 50%; margin: 0 auto;">
            <a href="http://localhost/restaurant_locator_system/index.php/american"><img src="http://localhost/restaurant_locator_system/res/images/american.jpg" width="500" height="300" >
            <h3 class="cuititle"><font color="black"> American </font></h3></a>
        </div>
        <div style="float: left; width: 50%; margin: 0 auto;">
            <a href="http://localhost/restaurant_locator_system/index.php/chinese"><font color="black"><img src="http://localhost/restaurant_locator_system/res/images/chinese.jpg" width="500" height="300">
            <h3 class="cuititle"> Chinese </font></h3></a>

        </div>
        <div style="float: left; width: 50%; margin: 0 auto;">
            <a href="http://localhost/restaurant_locator_system/index.php/italian"><font color="black"><img src="http://localhost/restaurant_locator_system/res/images/italian.jpg" width="500" height="300">
            <h3 class="cuititle">Italian </font></h3></a>

        </div>
        <div style="float: left; width: 50%; margin: 0 auto;">
            <a href="http://localhost/restaurant_locator_system/index.php/filipino"><img src="http://localhost/restaurant_locator_system/res/images/filipino.jpg" width="500" height="300">
            <h3 class="cuititle"><font color="black"> Filipino </font></h3></a>

        </div>
        <div style="float: left; width: 50%; margin: 0 auto;">
            <a href="http://localhost/restaurant_locator_system/index.php/japanese"><img src="http://localhost/restaurant_locator_system/res/images/japanese.jpg" width="500" height="300">
            <h3 class="cuititle"><font color="black"> Japanese </font></h3></a>
        </div>
        <div style="float: left; width: 50%; margin: 0 auto;">
            <a href="http://localhost/restaurant_locator_system/index.php/mexican"><img src="http://localhost/restaurant_locator_system/res/images/mexican.jpg" width="500" height="300">
            <h3 class="cuititle"><font color="black"> Mexican </font></h3></a>

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