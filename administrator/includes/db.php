<?php
// $con = new mysqli('localhost', 'root', '', 'dbnice') or die($con->error);
$con = mysqli_connect('localhost', 'root', '', 'dbnice');
$output = '';
// from pages>add_entry.php
if (isset($_POST["export1"])) {
    $result = $con->query("SELECT * FROM systemunitlist") or die($con->error);
    if (mysqli_num_rows($result) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>ID</th>  
                        <th>STATUS</th>  
                        <th>CPU</th>  
                        <th>HDD</th>
                        <th>RAM</th>
                        <th>MOBO</th>
                        <th>OS</th>
                    </thead>
                </tr>
            ';
        while ($row = mysqli_fetch_array($result)) {
            $output .= '
                    <tr>  
                         <td>' . $row["id"] . '</td>  
                         <td>' . $row["STATUS"] . '</td>  
                         <td>' . $row["cpu"] . '</td>  
                         <td>' . $row["hdd"] . '</td>  
                         <td>' . $row["ram"] . '</td>  
                         <td>' . $row["mobo"] . '</td>
                         <td>' . $row["os"] . '</td>
                    </tr>
            ';
        }
        $output .= '</table>';
        header('Content-Type: application/xls');
        header('Content-Disposition: attachment; filename=system_unit.xls');
        echo $output;
    }
}
// pages>items_desc.php
if (isset($_POST["export2"])) {
    $result = $con->query("SELECT * FROM full_item") or die($con->error);
    if (mysqli_num_rows($result) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>ID</th>  
                        <th>DESCRIPTION</th>  
                        <th>CATEGORY ID</th>  
                        <th>CATEGORY</th>
                    </thead>
                </tr>
            ';
        while ($row = mysqli_fetch_array($result)) {
            $output .= '
                    <tr>  
                         <td>' . $row["id"] . '</td>  
                         <td>' . $row["description"] . '</td>  
                         <td>' . $row["catid"] . '</td>  
                         <td>' . $row["category"] . '</td>  
                    </tr>
            ';
        }
        $output .= '</table>';
        header('Content-Type: application/xls');
        header('Content-Disposition: attachment; filename=description.xls');
        echo $output;
    }
}

// pages>logs.php
if (isset($_POST["export3"])) {
    $result = $con->query("SELECT * FROM activitylog") or die($con->error);
    if (mysqli_num_rows($result) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>LOG ID</th>  
                        <th>USER</th>  
                        <th>ACTION ID</th>  
                        <th>ACTIVITY DATE</th>
                        <th>ACTIVITY TIME</th>
                        <th>DEVICE</th>
                        <th>IP</th>
                        <th>SESSION</th>
                    </thead>
                </tr>
            ';
        while ($row = mysqli_fetch_array($result)) {
            $output .= '
                    <tr>  
                         <td>' . $row["activitylog"] . '</td>  
                         <td>' . $row["user"] . '</td>  
                         <td>' . $row["action"] . '</td>  
                         <td>' . $row["activitydate"] . '</td>  
                         <td>' . $row["activitytime"] . '</td>  
                         <td>' . $row["device"] . '</td>  
                         <td>' . $row["ip"] . '</td>  
                         <td>' . $row["session"] . '</td>  
                    </tr>
            ';
        }
        $output .= '</table>';
        header('Content-Type: application/xls');
        header('Content-Disposition: attachment; filename=logs.xls');
        echo $output;
    }
}

// from pages>computer_view.php>sold_unit.php
if (isset($_POST["export4"])) {
    $result = $con->query("SELECT * FROM systemunitlist WHERE status='SOLD'") or die($con->error);
    if (mysqli_num_rows($result) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>ID</th>  
                        <th>STATUS</th>  
                        <th>CPU</th>  
                        <th>HDD</th>
                        <th>RAM</th>
                        <th>MOBO</th>
                        <th>OS</th>
                    </thead>
                </tr>
            ';
        while ($row = mysqli_fetch_array($result)) {
            $output .= '
                    <tr>  
                         <td>' . $row["id"] . '</td>  
                         <td>' . $row["STATUS"] . '</td>  
                         <td>' . $row["cpu"] . '</td>  
                         <td>' . $row["hdd"] . '</td>  
                         <td>' . $row["ram"] . '</td>  
                         <td>' . $row["mobo"] . '</td>
                         <td>' . $row["os"] . '</td>
                    </tr>
            ';
        }
        $output .= '</table>';
        header('Content-Type: application/xls');
        header('Content-Disposition: attachment; filename=sold_unit.xls');
        echo $output;
    }
}

// from pages>computer_view.php>systemunitforsale.php
if (isset($_POST["export5"])) {
    $result = $con->query("SELECT * FROM systemunitlist WHERE status='FOR SALE'") or die($con->error);
    if (mysqli_num_rows($result) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>ID</th>  
                        <th>STATUS</th>  
                        <th>CPU</th>  
                        <th>HDD</th>
                        <th>RAM</th>
                        <th>MOBO</th>
                        <th>OS</th>
                    </thead>
                </tr>
            ';
        while ($row = mysqli_fetch_array($result)) {
            $output .= '
                    <tr>  
                         <td>' . $row["id"] . '</td>  
                         <td>' . $row["STATUS"] . '</td>  
                         <td>' . $row["cpu"] . '</td>  
                         <td>' . $row["hdd"] . '</td>  
                         <td>' . $row["ram"] . '</td>  
                         <td>' . $row["mobo"] . '</td>
                         <td>' . $row["os"] . '</td>
                    </tr>
            ';
        }
        $output .= '</table>';
        header('Content-Type: application/xls');
        header('Content-Disposition: attachment; filename=forsaleunit.xls');
        echo $output;
    }
}


// from pages>computer_view.php>reserveunit.php
if (isset($_POST["export6"])) {
    $result = $con->query("SELECT * FROM systemunitlist WHERE status='RESERVE'") or die($con->error);
    if (mysqli_num_rows($result) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>ID</th>  
                        <th>STATUS</th>  
                        <th>CPU</th>  
                        <th>HDD</th>
                        <th>RAM</th>
                        <th>MOBO</th>
                        <th>OS</th>
                    </thead>
                </tr>
            ';
        while ($row = mysqli_fetch_array($result)) {
            $output .= '
                    <tr>  
                         <td>' . $row["id"] . '</td>  
                         <td>' . $row["STATUS"] . '</td>  
                         <td>' . $row["cpu"] . '</td>  
                         <td>' . $row["hdd"] . '</td>  
                         <td>' . $row["ram"] . '</td>  
                         <td>' . $row["mobo"] . '</td>
                         <td>' . $row["os"] . '</td>
                    </tr>
            ';
        }
        $output .= '</table>';
        header('Content-Type: application/xls');
        header('Content-Disposition: attachment; filename=reserve_unit.xls');
        echo $output;
    }
}


// from pages>computer_view.php>currentlyuse.php
if (isset($_POST["export7"])) {
    $result = $con->query("SELECT * FROM systemunitlist WHERE status='CURRENTLY USE'") or die($con->error);
    if (mysqli_num_rows($result) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>ID</th>  
                        <th>STATUS</th>  
                        <th>CPU</th>  
                        <th>HDD</th>
                        <th>RAM</th>
                        <th>MOBO</th>
                        <th>OS</th>
                    </thead>
                </tr>
            ';
        while ($row = mysqli_fetch_array($result)) {
            $output .= '
                    <tr>  
                         <td>' . $row["id"] . '</td>  
                         <td>' . $row["STATUS"] . '</td>  
                         <td>' . $row["cpu"] . '</td>  
                         <td>' . $row["hdd"] . '</td>  
                         <td>' . $row["ram"] . '</td>  
                         <td>' . $row["mobo"] . '</td>
                         <td>' . $row["os"] . '</td>
                    </tr>
            ';
        }
        $output .= '</table>';
        header('Content-Type: application/xls');
        header('Content-Disposition: attachment; filename=currently_use.xls');
        echo $output;
    }
}



// from pages>rsosales.php
if (isset($_POST["export8"])) {
    $result8 = $con->query("SELECT invoice,date,rsoname,barcode,items_description,price,qty,amount FROM ttemp_sales_order") or die($con->error);
    if (mysqli_num_rows($result8) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>Invoice #</th>
                        <th>Date</th>
                        <th>RSO</th>
                        <th>Barcode</th>
                        <th>Items Description</th>
                        <th>Price</th>
                        <th>Qty</th>
                        <th>Amount</th>
                    </thead>
                </tr>
            ';
        while ($row = mysqli_fetch_array($result8)) {
            $output .= '
                    <tr>  
                         <td>' . $row["invoice"] . '</td>  
                         <td>' . $row["date"] . '</td>  
                         <td>' . $row["rsoname"] . '</td>  
                         <td>' . $row["barcode"] . '</td>  
                         <td>' . $row["items_description"] . '</td>  
                         <td>' . $row["price"] . '</td>
                         <td>' . $row["qty"] . '</td>
                         <td>' . $row["amount"] . '</td>
                    </tr>
            ';
        }
        $output .= '</table>';
        header('Content-Type: application/xls');
        header('Content-Disposition: attachment; filename=item_sold.xls');
        echo $output;
    }
}


// from pages>rsosales.php
if (isset($_POST["export9"])) {
    $result8 = $con->query("SELECT date,user,product_key,locationn,remarks FROM msoffice") or die($con->error);
    if (mysqli_num_rows($result8) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>Date</th>
                        <th>Product Key</th>
                        <th>Location</th>
                        <th>Remarks</th>
                    </thead>
                </tr>
            ';
        while ($row = mysqli_fetch_array($result8)) {
            $output .= '
                    <tr>  
                         <td>' . $row["date"] . '</td>  
                         <td>' . $row["product_key"] . '</td>  
                         <td>' . $row["locationn"] . '</td>  
                         <td>' . $row["remarks"] . '</td>  
                    </tr>
            ';
        }
        $output .= '</table>';
        header('Content-Type: application/xls');
        header('Content-Disposition: attachment; filename=msoffice.xls');
        echo $output;
    }
}
