<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Restaurant Locator System | American Restaurants</title>

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
            background-image: url("http://localhost/restaurant_locator_system/res/images/main/bg_top_img.jpg");
            background-repeat: no-repeat;
            background-size: 180% 200%;
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
            height: 500px;
            margin-bottom: 60px;
        }

        /* Declare heights because of positioning of img element */
        .carousel .item {
            height: 500px;
            background-color: #777;
        }
        .carousel-inner > .item > img {
            position: absolute;
            top: 0;
            left: 0;
            min-width: 100%;
            height: 500px;
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

        h3{ padding-top: 160px;}
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

        #resBox{
            width:23%;
            height:400px;
            padding-top:50px;
            margin-left:90px;
            margin-top:100px;
            border: 1px solid black;
            display:inline-block;
            border-radius:5px;
            background-image: url("http://localhost/restaurant_locator_system/res/images/green-footer.png");
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: bottom;
            background-color: white;
        }

        #resBox:hover{
            box-shadow: 0 0 20px gray;
        }

        div.sidebar, div.sidebar-category, div.sidebar-location{
            min-height: 100px;
            width:20%;
        }

        div.sidebar{
            padding: 20px;
            margin-left:75%;
            margin-top: 255px;
            position:absolute;
            top:68%;
        }

        div.sidebar-location{ margin-top: 5px;}

        div.sidebar-category, div.sidebar-location{
            width:100%;
            border: 1px solid black;
            border-radius:5px;
            padding-left:15px;
            padding-top: 30px;
            font-family: "Century Schoolbook";
            background-image: url("http://localhost//restaurant_locator_system/res/images/main/bg_bot.jpg");
            padding-bottom: 30px;
        }

        div.content{ width:75%; }

        p.sidebar-title{
            font-size:18px;
            text-align: center;
            width:238px;
            height:50px;
            margin-left:-20px;
            background-color: gold;
            padding-top:10px;
        }

        a.sidebar-links{padding:10px;}

        a.sidebar-links:hover{
            text-decoration: none;
            background-image: url(http://localhost//restaurant_locator_system/res/images/main/bg_top_img.jpg);
            color: gold;
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
            margin-top:80px;
        }

    </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="../index.php/main">Restaurant Locator System</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <a href="http://localhost/restaurant_locator_system/index.php/user_authentication/logout"><img src="http://localhost/restaurant_locator_system/res/images/user.png" width="50px" height="50px" class="user"/></a>
        </div>
    </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="http://localhost/restaurant_locator_system/res/images/main/middle_eastern_cuisine.jpg" alt="First slide">
            <h3>Welcome!</h3>
            <h5>Search for Middle Eastern Restaurants Nearby.</h5>
            <div id="search">
                <form action="http://localhost/restaurant_locator_system/index.php/search" method="get">
                    <input id="keyword" name="q" placeholder="Search for city or restaurant name..." class="ui-autocomplete-input" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true">
                    <input id="go" type="submit" value="Search">
                </form>
            </div>
        </div>
    </div>
</div>

<h2>Middle Eastern Restaurants</h2><br/>

<div class="content">
    <?php
    $link = mysqli_connect("localhost", "root", "projDb_2016", "rls_db");

    $queryCat = "SELECT id FROM category WHERE name = 'Middle Eastern'";
    $resultCat = mysqli_query($link, $queryCat);
    $categoryId = mysqli_fetch_assoc($resultCat);

    $queryResId = "SELECT restaurant_id FROM restaurant_has_category WHERE category_id = " . $categoryId['id'];
    $resultResId = mysqli_query($link, $queryResId);

    while($restaurantId=mysqli_fetch_assoc($resultResId)){
        $queryResName = "SELECT name FROM restaurant WHERE id = " . $restaurantId['restaurant_id'];
        $resultResName = mysqli_query($link, $queryResName);

        while($restaurantName=mysqli_fetch_assoc($resultResName)){
            $queryBr = "SELECT branch_id FROM restaurant WHERE name = '" . $restaurantName['name'] . "'";
            $resultBr = mysqli_query($link, $queryBr);
            $branchId = mysqli_fetch_assoc($resultBr);

            $queryResLoc = "SELECT location FROM branch WHERE id = '" . $branchId['branch_id'] . "'";
            $resultResLoc = mysqli_query($link, $queryResLoc);
            $branchLocation = mysqli_fetch_assoc($resultResLoc);

            echo "<a href='http://localhost/restaurant_locator_system/index.php/restaurant?name={$restaurantName['name']}&location={$branchLocation['location']}'><div id='resBox'><center>";

            echo "<img src='http://localhost/restaurant_locator_system/res/images/restaurants/{$branchLocation['location']} City/{$restaurantName['name']}/image.jpg' width='150px' height='150px'/>";
            echo "<br/><br/>";
            echo $restaurantName['name'];

            echo "<br/>" . $branchLocation['location'] . " City";
            echo "<br/><br/><img src='http://localhost/restaurant_locator_system/res/images/star.png' width='50px' height='50px'/>";
            echo "<br/>5 out of 5";
            echo "</center></div></a>";
        }
    }
    ?>
</div>
<div class="sidebar">
    <div class="sidebar-category">
        <p class="sidebar-title">Other Cuisines</p><br/>
        <?php
        $link = mysqli_connect("localhost", "root", "projDb_2016", "rls_db");

        $queryAllCategory = "SELECT name FROM category ORDER BY name ASC";
        $resultAllCategory = mysqli_query($link, $queryAllCategory);

        while($allCategory = mysqli_fetch_assoc($resultAllCategory)){
            $lowStr = strtolower($allCategory['name']);
            echo "<p><a href='http://localhost/restaurant_locator_system/index.php/{$lowStr}' class='sidebar-links'>" . $allCategory['name'] . "</a></p>";
        }
        ?>
    </div>
    <div class="sidebar-location">
        <p class="sidebar-title">Other Locations</p><br/>
        <?php
        $queryAllLocation = "SELECT location FROM branch ORDER BY location ASC";
        $resultAllLocation = mysqli_query($link, $queryAllLocation);

        while($allLocation = mysqli_fetch_assoc($resultAllLocation)){
            echo "<p><a href='' class='sidebar-links'>" . $allLocation['location'] . " City </a></p>";
        }
        ?>
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