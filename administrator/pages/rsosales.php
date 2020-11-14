<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<main class="body">
    <br />
    <div class="breadcrumbs">
        <h3>RSO Sales Report</h3>
    </div>
    <?php
    $conn = new mysqli('localhost', 'root', '', 'sunex') or die($conn->error);
    $result = $conn->query("SELECT * FROM temp_sales_order") or die($conn->error); ?>
    <table class='table-sortable'>
        <thead>
            <tr>
                <th>Invoice #</th>
                <th>Date</th>
                <th>RSO</th>
                <th>Barcode</th>
                <th>items Description</th>
                <th>Price</th>
                <th>qty</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody>


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
                echo "<tr>";
                echo "<td>$a</td>";
                echo "<td>$b</td>";
                echo "<td>$c</td>";
                echo "<td>$d</td>";
                echo "<td>$e</td>";
                echo "<td>$g</td>";
                echo "<td>$f</td>";
                echo "<td>$h</td>";
                echo "</tr>";
            } ?>
        </tbody>
    </table>
</main>
<script src="../js/table.js"></script>

</html>