<?php
// Start session
ob_start();
session_start();
date_default_timezone_set('Asia/Manila');
require_once './includes/db.php';
if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $username = mysqli_real_escape_string($con, $username);
    $pass = mysqli_real_escape_string($con, $password);
    $hashF = "$2y$10$";
    $salt = "iusesomecrazystrings22";
    $hashF_salt = $hashF . $salt;
    // $username = crypt($username, $hashF_salt);
    // $password = crypt($pass, $hashF_salt);

    // query user table
    $result = $con->query("SELECT * FROM user WHERE username_user='$username'") or die($con->error);
    while ($row = mysqli_fetch_assoc($result)) {
        $db_username = $row['username_user'];
        $db_user_id = $row['id'];
        $db_password = $row['user_pass'];
        $db_login = $row['login_counter'];
        $db_user_role = $row['user_role'];
    }

    // (if) checking if password matches from the database
    if ($db_password == $password) {
        header("location:./pages/index.php");

        // Assigning SESSION name
        $_SESSION['username'] = $db_username;
        $_SESSION['user_id'] = $db_user_id;
        $_SESSION['login'] = $db_login;
        $_SESSION['user_role'] = $db_user_role;

        ///Activity Logs
        $a = $db_username;
        $b = "Logged In";
        $c = date("y/m/d");
        $d = date("h:i:sa");
        $e = $_SERVER['HTTP_USER_AGENT'];
        $f = $_SERVER['REMOTE_ADDR'];
        $g = session_id();
        $query = "insert into activitylog (user,action,activitydate,activitytime,device,ip,session) values ('$a','$b','$c','$d','$e','$f','$g')";
        $result = mysqli_query($con, $query);
        if (!$result) {
            die("Query Failed. " . mysqli_error($con));
        } else {
            header("Location:./pages/index.php?status=welcome");
        }
    } // end of (if) matching password from the database
    else {
        header("Location:index.php?status=error_login");
    }
}
