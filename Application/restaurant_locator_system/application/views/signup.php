<html>
    <?php
        if (isset($this->session->userdata['logged_in'])) {
            header("location: http://localhost/login/index.php/user_authentication/user_login_process");
        }
    ?>

    <head>
        <title>Registration Form</title>
        <link rel="stylesheet" type="text/css" href="http://localhost/restaurant_locator_system/css/style.css">
        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro|Open+Sans+Condensed:300|Raleway' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div id="main">
            <div id="login">
                <h2>Registration Form</h2>
                <hr/>

                <?php
                    echo "<div class='error_msg'>";
                    $this->load->library('form_validation');
                    echo validation_errors();
                    echo "</div>";
                    echo form_open('user_authentication/new_user_registration');

                    echo form_label('Create Username : ');
                    echo"<br/>";
                    echo form_input('username');
                    echo "<div class='error_msg'>";

                    if (isset($message_display)) {
                        echo $message_display;
                    }

                    echo "</div>";
                    echo"<br/>";
                    echo form_label('Email : ');
                    echo"<br/>";

                    $data = array(
                        'type' => 'email',
                        'name' => 'email'
                    );
                    echo form_input($data);
                    echo"<br/>";
                    echo"<br/>";
                    echo form_label('Password : ');
                    echo"<br/>";
                    echo form_password('password');
                    echo"<br/>";
                    echo"<br/>";
                    echo form_submit('submit', 'Sign Up');
                    echo form_close();
                ?>

                <center>
                    <p>Already have an Account?</p>
                    <a href="http://localhost/restaurant_locator_system/index.php/login">Login</a>
                </center>
            </div>
        </div>
    </body>
</html>

