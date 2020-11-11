<?php
$con = new mysqli('localhost', 'root', '', 'dbnice') or die($con->error);
if (isset($_GET['cid'])) {
    $x = $_GET['cid'];
    $result = $con->query("SELECT * FROM system_unit WHERE id=$x") or die($con->error);
    while ($row = mysqli_fetch_assoc($result)) {
        $a = $row['date_checked'];
        $b = $row['location_id'];
        $c = $row['status_id'];
        $d = $row['cpu_id'];
        $e = $row['hdd_id'];
        $f = $row['ram_id'];
        $g = $row['mobo_id'];
        $h = $row['remarks'];
        $n = $row['os_id'];
        $i = $row['designation'];
        $j = $row['mac_address'];
        $k = $row['user'];
        $l = $row['buyer_id'];
        $m = $row['sold_date'];
    }
}
if (isset($_POST['submit1'])) {
    $a = $_POST['accessories'];
    $b = $_POST['qty'];
    $c = $_POST['buyer'];
    $result = $con->query("INSERT INTO accessories_sold (buyer_name,items_id,qty,system_id)values('$c',$a,$b,$x)") or die($con->error);
    header("location: computer_menu.php?source=soldupdate&cid=$x");
    // $page = $_SERVER['PHP_SELF'];
    // $sec = "3";
    // header("Refresh: $sec; url=$page");
}
