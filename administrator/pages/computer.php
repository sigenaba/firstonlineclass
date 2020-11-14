<br />
<div class="breadcrumbs">
    <h3>Add entry <?php echo "\ " . $source; ?></h3>
</div>
<div class="container-option">
    <ul class="nav-links">
        <li><a href="./add_entry.php" class="computerphpbtn"><input type="button" value="Computer Unit"></a></li>
        <li><a href="./add_entry.php?source=category" class="computerphpbtn"><input type="button" value="Category"></a></li>
        <li><a href="./add_entry.php?source=items" class="computerphpbtn"><input type="button" value="Items"></a></li>
        <li><a href="./add_entry.php?source=buyer" class="computerphpbtn"><input type="button" value="Add Buyer"></a></li>
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
$start_from = ($page - 1) * $num_per_page;
$result9 = $con->query("SELECT * FROM systemunitlist order by id asc limit $start_from,$num_per_page") or die($con->error);
if (isset($_POST['submit'])) {
    $a = date("yy/m/d");
    $b = $_POST['location'];
    $c = $_POST['status'];
    $d = $_POST['cpu'];
    $e = $_POST['hdd'];
    $f = $_POST['ram'];
    $g = $_POST['mobo'];
    $h = $_POST['os'];
    $i = $_POST['remarks'];
    $j = $_POST['designation'];
    $k = $_POST['mac_address'];
    $l = $_POST['user'];
    $query = "INSERT INTO system_unit (";
    $query .= "date_checked,location_id,status_id,";
    $query .= "cpu_id,hdd_id,ram_id,mobo_id,os_id,";
    $query .= "remarks,designation,mac_address,user";
    $query .= ")values(";
    $query .= "'$a','$b','$c','$d','$e','$f',";
    $query .= "'$g','$h','$i','$j','$k','$l'";
    $query .= ")";
    $result = mysqli_query($con, $query);
    if (!$result) {
        die("Query Failed! " . mysqli_error($con));
    }
    header("location: add_entry.php?m2=5");
}
?>
<div class="section-container">
    <div class="section-left">
        <form action="" method="post" class="thisform">
            <center>
                <H3 class="systemspec">Specifications</h3><br />
            </center>
            <div class="selections">
                <select name="location" id="selectdropdown1" autofocus class="form-control select2" class="option" required>
                    <option value="" disabled selected>Location</option>
                    <?php
                    $result3 = $con->query("SELECT * FROM system_location") or die($con->query);
                    while ($row = mysqli_fetch_assoc($result3)) {
                        $db_id = $row['id'];
                        $db_loc = $row['unit_location'];
                        echo "<option value='$db_id'>$db_loc</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="selections">
                <select name="status" id="selectdropdown2" class="form-control select2" class="option" required>
                    <option value="" disabled selected>Status</option>
                    <option value="2">RESERVE</option>
                    <option value="3">CURRENTLY USE</option>
                    <option value="4">FOR SALE</option>
                </select>
            </div>
            <div class="selections">
                <select name="cpu" id="selectdropdown3" class="form-control select2" class="option" required>
                    <option value="" disabled selected>CPU</option>
                    <?php
                    $result = $con->query("SELECT * FROM item_masterfile WHERE cat_id=3") or die($con->error);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $db_a = $row['item_description'];
                        $db_b = $row['id'];
                        echo "<option value='$db_b'>$db_a</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="selections">
                <select name="hdd" id="selectdropdown4" class="form-control select2" class="option" required>
                    <option value="" disabled selected>Hard Disk Drive</option>
                    <?php
                    $result = $con->query("SELECT * FROM item_masterfile WHERE cat_id=5") or die($con->error);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $db_a = $row['item_description'];
                        $db_b = $row['id'];
                        echo "<option value='$db_b'>$db_a</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="selections">
                <select name="ram" id="selectdropdown5" class="form-control select2" class="option" required>
                    <option value="" disabled selected>RAM</option>
                    <?php
                    $result = $con->query("SELECT * FROM item_masterfile WHERE cat_id=13") or die($con->error);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $db_a = $row['item_description'];
                        $db_b = $row['id'];
                        echo "<option value='$db_b'>$db_a</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="selections">
                <select name="mobo" id="selectdropdown6" class="form-control select2" class="option" required>
                    <option value="" disabled selected>Motherboard</option>
                    <?php
                    $result = $con->query("SELECT * FROM item_masterfile WHERE cat_id=8") or die($con->error);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $db_a = $row['item_description'];
                        $db_b = $row['id'];
                        echo "<option value='$db_b'>$db_a</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="selections">
                <select name="os" id="selectdropdown7" class="form-control select2" class="option" required>
                    <option value="" disabled selected>Operating System</option>
                    <?php
                    $result = $con->query("SELECT * FROM item_masterfile WHERE cat_id=10") or die($con->error);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $db_a = $row['item_description'];
                        $db_b = $row['id'];
                        echo "<option value='$db_b'>$db_a</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="computerphp_input">
                <input type="text" name="designation" placeholder="Designation">
            </div>
            <div class="computerphp_input">
                <input type="text" name="mac_address" placeholder="mac address">
            </div>
            <div class="computerphp_input">
                <input type="text" name="user" placeholder="user">
            </div>
            <br />
            <label for="oho">Remarks</label>
            <br />
            <div class="erem">
                <textarea name="remarks" id="oho"></textarea>
            </div>
            <br />
            <input type="submit" name="submit" value="Add to Database">
        </form>
    </div> <!-- section left end -->
    <div class="section-right">
        <table class="table-sortable" border=1 cellpadding=4 cellspacing=0>
        <div class="wrapper-search-export">

            <?php
                if (isset($_POST['name'])) {
                    $name = $_POST['name'];
                    header("location: add_entry.php?source=computersearch&name=$name");
                }
            ?>
            <div id="search">
                <form action="" method="post">
                    <input type="text" name="name" placeholder="Search ID" accesskey="s"><i class="fas fa-search"></i>
                </form>
            </div>

            <div class="exportclass">
                <form method="post" action="../includes/db.php" id="btnexport">
                    <input type="submit" name="export1" id="btn-success" value="export" />
                    <label for="btn-success"><i class="fas fa-file-excel"></i></label>
                </form>
            </div>

        </div>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Status</th>
                    <th>cpu</th>
                    <th>hdd</th>
                    <th>ram</th>
                    <th>mobo</th>
                    <th>Operating System</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $checkingcounter = $con->query("SELECT * FROM system_unit") or die($con->error);
                if (mysqli_num_rows($checkingcounter) < 1) { ?>
                    <tr>
                        <td colspan="8" style="color: red;">No data to be display yet</td>
                    </tr>
            </tbody>
        </table>
    <?php
                } else {
                    while ($row = mysqli_fetch_assoc($result9)) {
                        $a = $row['id'];
                        $b = $row['STATUS'];
                        $c = $row['cpu'];
                        $d = $row['hdd'];
                        $e = $row['ram'];
                        $f = $row['mobo'];
                        $g = $row['os'];
                        $deurl = "./add_entry.php?source=updateunit&cid=$a";
                        echo "<tr>";
                        echo "<td>$a</td>";
                        echo "<td>$b</td>";
                        echo "<td>$c</td>";
                        echo "<td>$d</td>";
                        echo "<td>$e</td>";
                        echo "<td>$f</td>";
                        echo "<td>$g</td>";
                        echo "<td><a href='$deurl'><input type='button' name='userbtnsbmt' value='EDIT'></a></td>";
                        echo "</tr>";
                    }
    ?>



        </tbody>
        </table>
        <div class="pager-section">
            <?php
                    $result = $con->query("SELECT * FROM systemunitlist") or die($con->error);
                    $total_records = mysqli_num_rows($result);
                    $total_pages = ceil($total_records / $num_per_page);
                    // $total_pages = floor($total_records / $num_per_page);
                    if ($page > 1) {
                        echo "<a href='add_entry.php?page=" . ($page - 1) . "' id='pagerbutton'>Prev</a>";
                    }
                    for ($i = 1; $i <= $total_pages; $i++) {
                        if($i==$page){
                            echo "<a style='background: #00ff00;' href='add_entry.php?page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
                        }
                        else {
                               echo "<a href='add_entry.php?page=" . $i . "' id='pagerbutton'>" . $i . "</a>";

                            }
                        }
                    if ($i = $total_pages) {
                        echo "<a href='add_entry.php?page=" . ($page + 1) . "' id='pagerbutton'>Next</a>";
                    }
            ?>
        </div>
        <br />
    <?php } ?>
    </div>
</div>
<?php
if (isset($_GET['m2'])) {
    $m2 = $_GET['m2']; ?>
    <div class="flash-data" data-flashdata="<?php echo $m2; ?>"></div>
<?php } ?>
<script src="../js/sweetalert2.all.min.js"></script> <!-- delete/save/update pop-up parter above js -->
<script src="../js/jquery-3.5.1.min.js"></script> <!-- this is for delete/update pop-up-->
<script src="../css/jquery-3.1.1.js"></script>
<script src="../css/select2.full.min.js"></script>
<script src="../js/table.js"></script>
<script>
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()
    })

    ClassicEditor.create(document.getElementById('oho'));

    // code below this line is for update/save/delete notification
    $('.btn-del').on('click', function(e) {
        e.preventDefault();
        const href = $(this).attr('href')
        Swal.fire({
            title: 'Are you sure buddy?',
            text: 'Record will be deleted!',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Delete Record',
        }).then((result) => {
            if (result.value) {
                document.location.href = href;
            } else {
                Swal.fire("unable to delete record");
            }
        })
    })

    const flashdata = $('.flash-data').data('flashdata')
    if (flashdata == 1) {
        Swal.fire({
            title: 'Record Deleted!',
            text: 'Record has been deleted!',
            icon: 'success'
        })
    }
    if (flashdata == 2) {
        Swal.fire({
            icon: 'info',
            title: 'Viola!',
            text: '1 record has been added but not yet save!'
        })
    }
    if (flashdata == 3) {
        Swal.fire({
            icon: 'warning',
            title: 'Something went wrong',
            text: 'Awwwww, add something else! record was already existing',
            confirmButtonColor: '#FAAD14',
        })
    }

    if (flashdata == 4) {
        Swal.fire({
            icon: 'info',
            title: 'Update Record',
            text: 'Oh men, no update on accessories',
            confirmButtonColor: '#52C41A',
        })
    }
    if (flashdata == 5) {
        Swal.fire({
            icon: 'info',
            title: 'Update Record',
            text: 'Got it! Record updated successfully',
            confirmButtonColor: '#52C41A',
        })
    }
</script>