<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<?php include "../includes/db.php"; ?>

<main class="body">
    <div class="breadcrumbs">
        <h3>Sold Unit</h3>
    </div>
    <br />

    <?php
    $num_per_page = 20;
    if (isset($_GET['page'])) {
        $page = $_GET['page'];
    } else {
        $page = 1;
    }
    $start_from = ($page - 1) * 20;
    $result = $con->query("SELECT * FROM systemunitlist WHERE status='SOLD' limit $start_from,$num_per_page") or die($con->error);
    ?>
    <div class="section-container">
        <div class="section-left">
            <table class="table-sortable" border=1>
                <form method="post" action="../includes/db.php" id="btnexport">
                    <span class="exportclass">
                        <input type="submit" name="export1" id="btn-success" value="export" />
                        <label for="btn-success"><i class="fas fa-file-excel"></i></label>
                    </span>
                </form>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>BUYER</th>
                        <th>DATE SOLD</th>
                        <th>PROCESSOR</th>
                        <th>HDD</th>
                        <th>RAM</th>
                        <th>MOTHERBOARD</th>
                        <th>OPERATING SYSTEM</th>
                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <?php

                    while ($row = mysqli_fetch_assoc($result)) {
                        $db_code = $row['id'];
                        $db_buyer = $row['buyername'];
                        $db_date = $row['sold_date'];
                        $db_cpu = $row['cpu'];
                        $db_hd = $row['hdd'];
                        $db_ram = $row['ram'];
                        $db_mobo = $row['mobo'];
                        $db_os = $row['os'];
                        $deurl = "./soldpreview.php?source=ohmy&cid=$db_code";

                        $query2 = "SELECT * FROM buyer where buyer_name='$db_buyer'";
                        $result2 = mysqli_query($con, $query2);
                        $row2 = mysqli_fetch_assoc($result2);
                        $db2_buyer = $row2['id'];
                        $db2_photo = $row2['buyer_photo'];

                        echo "<tr>";
                        echo "<td>$db_code</td>";
                        echo "<td>$db_buyer</td>";
                        echo "<td>$db_date</td>";
                        echo "<td>$db_cpu</td>";
                        echo "<td>$db_hd</td>";
                        echo "<td>$db_ram</td>";
                        echo "<td>$db_mobo</td>";
                        echo "<td>$db_os</td>";
                        echo "<td><a href='$deurl' target='_blank'><i class='far fa-eye'></i> View</a></td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
                <tr>
                    <td colspan="9">
                        <div class="pagination-wrapper">
                            <?php
                            $result1 = $con->query("SELECT * FROM systemunitlist WHERE status='SOLD'") or die($con->error);
                            $total_records = mysqli_num_rows($result1);
                            $total_pages = ceil($total_records / $num_per_page);
                            if ($page > 1) {
                                echo "<a href='soldunit.php?page=" . ($page - 1) . "' id='pagerbutton'>Prev</a>";
                            }
                            for ($i = 1; $i <= $total_pages; $i++) {
                                echo "<a href='soldunit.php?page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
                            }
                            if ($i > $page) {
                                echo "<a href='soldunit.php?page=" . ($page + 1) . "' id='pagerbutton'>Next</a>";
                            }
                            ?>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <br />


</main>
</body>
<br><br><br />
<?php include "../includes/footer.php"; ?>

</html>
<script src="../css/table.js"></script>