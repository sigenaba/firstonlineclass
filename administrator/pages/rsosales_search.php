<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<main class="body">
    <br />
    <div class="breadcrumbs">
        <h3>RSO Sales Report</h3>
    </div>
    <?php
    $conn = new mysqli('localhost', 'root', '', 'sunex') or die($conn->error);
    $result = $conn->query("SELECT * FROM temp_sales_order") or die($conn->error); 
$num_per_page = 20;
if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 1;
}
if(isset($_GET['name'])){
    $item=$_GET['name'];
}
$resultitem=$conn->query("SELECT * FROM temp_sales_order WHERE items_description like '%$item%'")or die($conn->error);
$start_from = ($page - 1) * 20;
$result = $conn->query("SELECT * FROM temp_sales_order order by rsoname asc limit $start_from,$num_per_page") or die($conn->error); ?>
    <table class='table-sortable' border=1>
    <div class="wrapper-search-export">

<?php
if (isset($_POST['name'])) {
    $name = $_POST['name'];
    header("location: rsosales.php?name=$name");
}
?>
<div id="search">
    <form action="" method="post">
        <input type="text" name="name" placeholder="Search item" accesskey="s"><i class="fas fa-search"></i>
    </form>
</div>

<div class="exportclass">
    <form method="post" action="../includes/db.php" id="btnexport">
        <input type="submit" name="export4" id="btn-success" value="export" />
        <label for="btn-success"><i class="fas fa-file-excel"></i></label>
    </form>
</div>
</div>
        <thead>
            <tr>
                <th>Invoice #</th>
                <th>Date</th>
                <th>RSO</th>
                <th>Barcode</th>
                <th>Items Description</th>
                <th>Price</th>
                <th>Qty</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody class='rsosales'>


            <?php
            while ($row = mysqli_fetch_assoc($resultitem)) {
                $a = $row['invoice'];
                $b = $row['date'];
                $c = $row['rsoname'];
                $d = $row['barcode'];
                $e = $row['items_description'];
                $f = $row['price'];
                $f = number_format($f);
                $g = $row['qty'];
                $g = number_format($g);
                $h = $row['amount'];
                $h = number_format($h);
                echo "<tr class='rsosales'>";
                echo "<td>$a</td>";
                echo "<td>$b</td>";
                echo "<td>$c</td>";
                echo "<td>$d</td>";
                echo "<td>$e</td>";
                echo "<td>$g</td>";
                echo "<td>$f</td>";
                echo "<td>$h</td>";
                echo "</tr>";
                }
                if(mysqli_num_rows($resultitem)<1){
                    echo "<tr>";
                    echo "<td style='color: red;' colspan='8'>No data found!</td>";
                    echo "</tr>";
                } ?>
        </tbody>
    </table>
    
</main>
<script src="../js/table.js"></script>

</html>