<?php
    session_start();

    $username="root";
    $password="projDb_2016";
    $db="rls_db";
    $hostname="localhost";

    @mysqli_connect($hostname, $username, $password);
    @mysqli_select_db(mysqli_connect($hostname, $username, $password), $db);

    $link = mysqli_connect($hostname, $username, $password);
?>
<html>
    <head>
        <title>Create your new Account - SAMS</title>
        <style>
            body{
                background-color:rgb(27,61,85);
                overflow-x:hidden;
                margin:0;
                padding:0;
                font-family:arial;
            }

            div.bgovr{
                width:100%;
                min-height:100px;
                padding-top:130px;
                padding-left:320px;
                padding-right:0px;
                position:absolute;
            }

            div.main{
                padding-bottom:40px;
                padding-top:40px;
                padding-left:40px;
                padding-right:40px;
                width:50%;
                vertical-align:middle;
                border:1px solid black;
                background-color:rgb(232,192,32);
                margin-bottom:115px;
            }

            input.btnext{
                border-radius:15px;
                width:100px;
                height:50px;
            }

            input[type="text"], [type="password"]{
                border-radius:5px;
                height:30px;
                width:50%;
                font-size:15px;
                padding-left:3px;
            }

            h2, h3{
                line-height:10px;
                color:rgb(8,8,194);
            }
        </style>
    </head>
    <body>
        <div class="bgovr">
            <div class="main">
                <!--<center><img src='images/sao.png' alt="SAO_Logo" width="200px" height="200px" />-->
                <h2>Restaurant Locator System</h2>
                <h3>Log In</h3></center>

                <form action="" method="POST">
                    <label>Username: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="text" name="username" required/><br><br>
                    <label>Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="password" name="pswd" required/><br><br>
                    <center><input type="submit" name="next" class="btnext" value="SUBMIT" /></center><br/>
                    <center><input type="submit" name="signup" class="btnext" value="SIGN UP"/></center><br />
                </form>
                <?php
                if(isset($_POST['next'])){
                    $username = $_POST['username'];
                    $password = $_POST['pswd'];

                    $sql = "SELECT `id` FROM USER WHERE `username` = $username AND `password` = $password";
                    $resultId = mysqli_query($link, $sql);

                    $sql = "SELECT `password` FROM USER WHERE `username` = $username";
                    $resultPass = mysqli_query($link, $sql);
                    $rowPass = mysqli_fetch_assoc($resultPass);

                    if($resultPass[0] == ""){
                        if(!($password === $pass)){
                            echo "Incorrect Username or Password. Please try again.";
                        }else {
                            $_SESSION['username'] = $username;
                            $_SESSION['password'] = $password;

                            header('Location: user_profile.php');
                        }
                    }else{
                        echo "Invalid Username and / or Password.";
                    }
                }else if(isset($_POST['signup'])){
                    header('Location: signup.php');
                }
                ?>
            </div>
        </div>
    </body>
</html>