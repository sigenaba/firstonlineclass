<br />
<div class="breadcrumbs">
    <h3>View / Edit entry <?php echo "     \   " . $source; ?></h3>
</div>
<div class="container-option">
    <ul class="nav-links">
        <li><a href="./computer_menu.php" class="computerphpbtn"><input type="button" value="For Sale"></a></li>
        <li><a href="./computer_menu.php?source=sold" class="computerphpbtn"><input type="button" value="Sold"></a></li>
        <li><a href="./computer_menu.php?source=reserve" class="computerphpbtn"><input type="button" value="Reserve"></a></li>
        <li><a href="./computer_menu.php?source=currently_use" class="computerphpbtn"><input type="button" value="Currently Use"></a></li>
    </ul>
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
$result = $con->query("SELECT * FROM systemunitlist WHERE status='FOR SALE' limit $start_from,$num_per_page") or die($con->error);
$coun = mysqli_num_rows($result); ?>
<div class="section-container">
    <div class="section-left">
        <table class="table-sortable" border=1 cellpadding=4 cellspacing=0>
            <div class="wrapper-search-export">
                <?php
                if (isset($_POST['name'])) {
                    $name = $_POST['name'];
                    // header("location: computer_menu.php?source=searchsold&name=$name");
                }
                ?>
                <div id="search">
                    <!-- <form action="" method="post">
                        <input type="text" name="name" placeholder="Search name" accesskey="s"><i class="fas fa-search"></i>
                    </form> -->
                </div>

                <div class="exportclass">
                    <form method="post" action="../includes/db.php" id="btnexport">
                        <input type="submit" name="export5" id="btn-success" value="export" />
                        <label for="btn-success"><i class="fas fa-file-excel"></i></label>
                    </form>
                </div>
            </div>
            <thead>
                <tr>
                    <th>ID</th>
                    <!-- <th>Status</th> -->
                    <!-- <th>Buyer</th> -->
                    <!-- <th>Sold date</th> -->
                    <th>cpu</th>
                    <th>hdd</th>
                    <th>ram</th>
                    <th>mobo</th>
                    <th>Operating System</th>
                    <!-- <th>Action</th> -->
                </tr>
            </thead>
            <tbody>
                <?php if ($coun > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $a = $row['id'];
                        $b = $row['STATUS'];
                        $c = $row['buyername'];
                        $d = $row['cpu'];
                        $e = $row['hdd'];
                        $f = $row['ram'];
                        $g = $row['mobo'];
                        $h = $row['os'];
                        $i = $row['sold_date'];
                        $deurl = "./computer_menu.php?source=soldupdate&cid=$a";
                        echo "<tr>";
                        echo "<td>$a</td>";
                        // echo "<td>$b</td>";
                        // echo "<td>$c</td>";
                        // echo "<td>$i</td>";
                        echo "<td>$d</td>";
                        echo "<td>$e</td>";
                        echo "<td>$f</td>";
                        echo "<td>$g</td>";
                        echo "<td>$h</td>";
                        // echo "<td><a href='$deurl'><input type='button' name='userbtnsbmt' value='EDIT'></a></td>";
                        echo "</tr>";
                    }
                }
                if ($coun < 1) {
                    echo "<tr>";
                    echo "<td style='color: red;' colspan='6'>No data to be found yet!</td>";
                }
                ?>

            </tbody>
        </table>
        <div class="pager-section">
            <?php
            $result1 = $con->query("SELECT * FROM systemunitlist WHERE status='FOR SALE'") or die($con->error);
            $total_records = mysqli_num_rows($result1);
            $total_pages = ceil($total_records / $num_per_page);
            if ($page > 1) {
                echo "<a href='computer_menu.php?page=" . ($page - 1) . "' id='pagerbutton'>Prev</a>";
            }
            for ($i = 1; $i <= $total_pages; $i++) {
                if ($i == $page) {
                    echo "<a style='background: #00FF00;' href='computer_menu.php?page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
                } else {
                    echo "<a href='computer_menu.php?page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
                }
            }
            if ($i > $page) {
                echo "<a href='computer_menu.php?page=" . ($page + 1) . "' id='pagerbutton'>Next</a>";
            }
            ?>
        </div>
        <br />
    </div>

</div>
</div>
<script src="../js/table.js"></script>