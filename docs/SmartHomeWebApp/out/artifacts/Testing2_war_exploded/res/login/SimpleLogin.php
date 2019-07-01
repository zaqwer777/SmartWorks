<?php
    $user = "admin";
    $pass = "pass";

    if(isset($_POST["submit"])) {
        if($_POST["username"] == $user && $_POST["password"] == $pass) {
            echo "Login successful";
        } else {
            echo "Incorrect Login";
        }
    }
?>
