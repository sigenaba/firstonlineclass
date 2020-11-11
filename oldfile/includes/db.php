<?php
$con = new mysqli('localhost', 'root', '', 'dbnice') or die($con->error);
$output = '';
// from pages>add_entry.php
if (isset($_POST["export1"])) {
    $result = $con->query("SELECT * FROM systemunitlist WHERE status='SOLD'") or die($con->error);
    if (mysqli_num_rows($result) > 0) {
        $output .= '
   <table class="table" bordered="1">  
                <tr>
                    <thead>  
                        <th>ID</th>  
                        <th>BUYER</th>  
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
                         <td>' . $row["buyername"] . '</td>  
                         <td>' . $row["status"] . '</td>  
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
