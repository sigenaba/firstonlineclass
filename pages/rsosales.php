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
$start_from = ($page - 1) * 20;
$result = $conn->query("SELECT * FROM temp_sales_order order by rsoname asc limit $start_from,$num_per_page") or die($conn->error); ?>
    <table class='table-sortable' border=1>
    <div class="wrapper-search-export">

<?php
if (isset($_POST['name'])) {
    $name = $_POST['name'];
    header("location: rsosales_search.php?name=$name");
}
?>
<div id="search">
    <form action="" method="post">
        <input type="text" name="name" placeholder="Search item" accesskey="s"><i class="fas fa-search"></i>
    </form>
</div>

<div class="exportclass">
    <form method="post" action="../administrator/includes/db.php" id="btnexport">
        <input type="submit" name="export8" id="btn-success" value="export" />
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
            while ($row = mysqli_fetch_assoc($result)) {
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
                echo "<td>$f</td>";
                echo "<td>$g</td>";
                echo "<td>$h</td>";
                echo "</tr>";
            } ?>
        </tbody>
    </table>
    <div class="pager-section">
            <?php
            $result1 = $conn->query("SELECT * FROM temp_sales_order") or die($conn->error);
            $total_records = mysqli_num_rows($result1);
            $total_pages = ceil($total_records / $num_per_page);
            if ($page > 1) {
                echo "<a href='rsosales.php?page=" . ($page - 1) . "' id='pagerbutton'>Prev</a>";
            }
            for ($i = 1; $i <= $total_pages; $i++) {
                if($i==$page){
                    echo "<a style='background: #00FF00;' href='rsosales.php?page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
                }else{
                    echo "<a href='rsosales.php?page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
                }
            }
            if ($i > $page) {
                echo "<a href='rsosales.php?page=" . ($page + 1) . "' id='pagerbutton'>Next</a>";
            }
            ?>
        </div>
</main>
<script src="../js/table.js"></script>

</html>