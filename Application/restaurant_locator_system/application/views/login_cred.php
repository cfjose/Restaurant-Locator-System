<?php
    session_start();

    if($_SESSION['lastname'] == "" ||
        $_SESSION['firstname'] == "" ||
        $_SESSION['midname'] == "" ||
        $_SESSION['gender'] == "" ||
        $_SESSION['bday'] == "" ||
        $_SESSION['contact'] == ""){
        header('Location: signup.php');
    }else{
        $username="root";
        $password="projDb_2016";
        $db="rls_db";
        $hostname="localhost";

        @mysqli_connect($hostname, $username, $password);
        @mysqli_select_db(mysqli_connect($hostname, $username, $password), $db);

        $link = new mysqli(mysqli_connect($hostname, $username, $password));
    }
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

        .personal, .orgmem, .usrcred{
            display: inline-block;
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

        div.usrcred{
            padding-top:18px;
            padding-bottom:18px;
            padding-left:5px;
            padding-right:5px;
            margin-bottom:60px;
            margin-left:25px;
            width:34%;
            background-color:rgb(139,24,27);
            text-align:center;
            color:white;
        }

        div.personal{
            border-style:double;
            border-color:rgb(139,24,27);
            padding-top:15px;
            padding-bottom:15px;
            padding-left:15px;
            padding-right:15px;
            text-align:center;
            margin-left:100px;
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
                <h3>Sign-up</h3></center>
                <div class="hdinf">
                    <div class="personal">
                        <label>PERSONAL INFORMATION</label>
                    </div>

                    <div class="usrcred">
                        <label>LOGIN CREDENTIALS</label>
                    </div>
                </div>

                <form action="" method="POST">
                    <label>E-mail Address: &nbsp;&nbsp;&nbsp;</label>
                    <input type="text" name="email" required/><br><br>
                    <label>Username: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="text" name="username" required/><br><br>
                    <label>Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="password" name="pswd" required/><br><br>
                    <center><input type="submit" name="next" class="btnext" value="SUBMIT" /></center>
                </form>
                <?php
                    if(isset($_POST['next'])){
                        $username = "root";
                        $password = "projDb_2016";
                        $hostname = "localhost";
                        $db = "dbtest";

                        $email = $_POST['email'];
                        $user = $_POST['username'];
                        $password = $_POST['pswd'];

                        $lastname = $_SESSION['lastname'];
                        $firstname = $_SESSION['firstname'];
                        $midname = $_SESSION['midname'];
                        $gender = $_SESSION['gender'];
                        $bday = $_SESSION['bday'];
                        $contact = $_SESSION['contact'];

                        $sql = $link->prepare("INSERT into PERSON set `lastname` = ?
                                                                      `firstname` = ?
                                                                      `midname` = ?
                                                                      `gender` = ?
                                                                      `birthday` = ?
                                                                      `contact_num` = ?");

                        $sql->bind_param("ssssds", $lastname, $firstname, $midname, $gender, $bday, $contact);
                        $sql->execute();

                        $sql = $link->prepare("INSERT into USER set `username` = ?
                                                                    `password` = ?
                                                                    `email` = ?");

                        $sql->bind_param("sssi", $user, $password, $email);
                        $sql->execute();

                        header('Location: login.php');
                    }
                ?>
            </div>
        </div>
    </body>
</html>