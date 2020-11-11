<?php
session_start();
date_default_timezone_set('Asia/Manila');
include('../../includes/db.php');


///Activity Logs for logout
$a = $_SESSION['username'];
$b = "Logged Out";
$c = date("y/m/d");
$d = date("h:i:sa");
$e = $_SERVER['HTTP_USER_AGENT'];
$f = $_SERVER['REMOTE_ADDR'];
$g = session_id();

$query = "insert into activitylog (user,action,activitydate,activitytime,device,ip,session) values ('$a','$b','$c','$d','$e','$f','$g')";
$result = mysqli_query($con, $query);
$result = mysqli_query($con, $query);
if (!$result) {
    die("Query Failed. " . mysqli_error($con));
}
session_destroy();
header("location: ../index.php");
