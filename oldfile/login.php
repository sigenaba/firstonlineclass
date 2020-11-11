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
    $result = $con->query("select * from user where username_user='$username'") or die($con->error);
    while ($row = mysqli_fetch_assoc($result)) {
        $a = $row['username_user'];
        $b = $row['user_pass'];
    }

    // $hashF = "$2y$10$";
    // $salt = "iusesomecrazystrings22";
    // $hashF_salt = $hashF . $salt;
    // $password = crypt($pass, $hashF_salt);

    // query user table
    $query = "select * from user where username_user='$username'";
    $result1 = mysqli_query($con, $query);
    if (!$result1) {
        die("Query Failed!" . mysqli_error($con));
    }
    while ($row = mysqli_fetch_assoc($result1)) {
        $db_username = $row['username_user'];
        $db_user_id = $row['id'];
        $db_password = $row['user_pass'];
        $db_login = $row['login_counter'];
        $db_user_role = $row['user_role'];
    }

    if ($db_password === $password && $db_user_role === 'admin') {
        header("location:./pages/index.php");

        // Assigning SESSION name
        $_SESSION['username'] = $db_username;
        $_SESSION['id'] = $db_user_id;
        $_SESSION['login_counter'] = $db_login;
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
        $result2 = mysqli_query($con, $query);
        if (!$result2) {
            die("Query Failed. " . mysqli_error($con));
        }
        if ($_SESSION['user_role'] === 'admin') {
            header("Location:./pages/index.php");
        } else if ($_SESSION['user_role'] === 'subscriber') {
            header("Location:index.php");
        } else {
            header("Location:index.php");
        }
    } else {
        header("Location:index.php?status=error_login");
    }
}
