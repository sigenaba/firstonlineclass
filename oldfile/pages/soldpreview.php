<?php include "../includes/db.php";
if (isset($_GET['cid'])) {
    $id = $_GET['cid'];

    $query = "SELECT * FROM systemunitlist WHERE id='$id'";
    $result = mysqli_query($con, $query);
    if (!$result) {
        die("Query Failed!" . mysqli_error($con));
    }
    while ($row = mysqli_fetch_assoc($result)) {
        $db_id = $row['id'];
        $db_date = $row['sold_date'];
        $db_cpu = $row['cpu'];
        $db_hd = $row['hdd'];
        $db_ram = $row['ram'];
        $db_mobo = $row['mobo'];
        $db_os = $row['os'];
        $db_buyername = $row['buyername'];
    }
    $resul2 = $con->query("SELECT * FROM buyer where buyer_name='$db_buyername'") or die($con->error);
    while ($roww = mysqli_fetch_assoc($resul2)) {
        $db2_buyer = $roww['id'];
        $db2_buyer_name = $roww['buyer_name'];
        $db_photo = $roww['buyer_photo'];
    }
?>
    <link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript">
        function print_page() {
            var ButtonControl = document.getElementById("btnprint");
            ButtonControl.style.visibility = "hidden";
            window.print();
        }
    </script>
    <div class="btn-container">
        <input type="button" id="btnprint" value="Print this Page" onclick="print_page()">
    </div>

    <div class="container">
        <div class="headingsold-container">
            <img src="../images/sunx_logo.png">
            <h2>Sold Report</h2>
        </div>
        <div class="sold-photo">
            <?Php
            if ($db_photo) { ?>
                <img class="tphot" src="../images/uploaded_image/<?php echo $db_photo; ?>" alt="">
            <?php  } else {
                echo "<img src=''>";
            }
            ?>
        </div>
        <div class="sold-container">
            <div class="section-left">
                <p>Buyer</p>
                <p>Sold Date</p>
                <p>Processor</p>
                <p>Hard Disk Drive</p>
                <p>RAM</p>
                <p>Motherboard</p>
                <p>Operating System</p>
                <p>Accessories</p>
            </div>
            <div class="section-right">
                <p><span class="srs">:</span><?php echo "$db2_buyer_name ($id)"; ?></p>
                <p><span class="srs">:</span><?php echo "$db_date"; ?></p>
                <p><span class="srs">:</span><?php echo "$db_cpu"; ?></p>
                <p><span class="srs">:</span><?php echo "$db_hd"; ?></p>
                <p><span class="srs">:</span><?php echo "$db_ram"; ?></p>
                <p><span class="srs">:</span><?php echo "$db_mobo"; ?></p>
                <p><span class="srs">:</span><?php echo "$db_os"; ?></p>
                <?php
                $result2 = $con->query("SELECT * FROM accessoriesview where status='save' and system_id=$id") or die($con->error);
                while ($acc = mysqli_fetch_assoc($result2)) {
                    $item = $acc['system_id'];
                    $item_desc = $acc['idesc'];
                    $item_qty = $acc['qty'];
                    $itemconcat=$item_desc.' ('.$item_qty .')';?>
                    <p><span class='srs'>&#x25C9</span><?php echo $item_desc;?><small class='forqty'> (<?php echo $item_qty;?>)</small></p>
                <?php }
                ?>
            </div>
        </div>

        <div class="footerpart">
            <div class="preparedby">
                <p>Prepared by: <u>Romeo Bulalacao Jr.</u></p>
            </div>
            <div class="receiveto">
                <p>Receive by: <u><span style="color: white;">___________________</span></u></p>
            </div>
        </div>
    </div> <!-- end of container -->

<?php
}
