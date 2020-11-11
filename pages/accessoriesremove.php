<?php include "../includes/db.php";
if (isset($_GET['sid'])) {
    $a = $_GET['sid'];
    $b = $_GET['itemsid'];
    echo "<h2> $a<br/></h2>";
    echo "<h2> $b<br/></h2>";
    $result = $con->query("UPDATE accessories_sold SET status='tag' WHERE system_id=$a and items_id=$b") or die($con->errror);
    // $page = $_SERVER['PHP_SELF'];
    // $sec = "3";
    // header("Refresh: $sec; url=$page");
    header("location: computer_menu.php?source=soldupdate&cid=$a&m=1");
}


if (isset($_GET['lid'])) {
    $id = $_GET['lid'];
    $query = "DELETE FROM activitylog WHERE activitylog=$id";
    $result = mysqli_query($con, $query);
    if (!$result) {
        die("Query Failed" . mysqli_error($con));
    }
    header("location: logs.php?m=1");
    // echo '<script>alert("Record hasd been deleted!");</script>';
    // echo "<script>window.location.href='./logs.php';</script>";
}

if(isset($_GET['delete'])){
    $xx=$_GET['delete'];
    $xxx=$_GET['summid'];
    $result4=$con->query("DELETE FROM gatepass WHERE id=$xx")or die($con->error);
    header("location: gatepassedit.php?sumid=$xxx&m=1");
    // $page = $_SERVER['PHP_SELF'];
    //     $sec = "1";
    //     header("Refresh: $sec; url=$page");
    }