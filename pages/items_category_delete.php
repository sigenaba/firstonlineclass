<?php
include "../includes/db.php";
if (isset($_GET['catid'])) {
    $dbid = $_GET['catid'];
    $result = $con->query("DELETE from item_category where id=$dbid") or die($con->error);
    header("Location:add_entry.php?source=category&status=record-deleted");
}
