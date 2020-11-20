<?php
if (isset($_GET['cid'])) {
    $x = $_GET['cid'];
    $result = $con->query("SELECT * FROM system_unit WHERE id=$x") or die($con->error);
    while ($row = mysqli_fetch_assoc($result)) {
        $a = $row['date_checked'];
        $b = $row['location_id'];
        $c = $row['status_id'];
        $d = $row['cpu_id'];
        $e = $row['hdd_id'];
        $f = $row['ram_id'];
        $g = $row['mobo_id'];
        $h = $row['remarks'];
        $n = $row['os_id'];
        $i = $row['designation'];
        $j = $row['mac_address'];
        $k = $row['user'];
        $l = $row['buyer_id'];
        $m = $row['sold_date'];
    }
}

if (isset($_POST['submit'])) {
    $input_a = $_POST['date_checked'];
    $input_b = $_POST['location'];
    $input_c = $_POST['status'];
    $input_d = $_POST['cpu'];
    $input_e = $_POST['hdd'];
    $input_f = $_POST['ram'];
    $input_g = $_POST['mobo'];
    $input_i = $_POST['designation'];
    $input_j = $_POST['mac_address'];
    $input_j = mysqli_real_escape_string($con, $input_j);
    $input_k = $_POST['os'];
    $input_l = $_POST['user'];
    $iput_l = mysqli_escape_string($con, $input_l);
    $input_m = $_POST['remarks'];
    $input_m = mysqli_real_escape_string($con, $input_m);
    $input_n = date("yy/m/d");
    //status: 1=sold, 2=reserve, 3=currently use, 4=for sales, 5=defective
    echo "<h3>$input_c</h3>";
    // todo: if walang entry ang buyer_ID and hindi sold ang nasa status then do this
    if ($l < 1 && $c > 1) {
        $query = "UPDATE system_unit SET ";
        $query .= "date_checked='$input_a', location_id=$input_b, status_id=$input_c,";
        $query .= "cpu_id=$input_d, hdd_id=$input_e, ram_id=$input_f, mobo_id=$input_g, remarks='$input_m',";
        $query .= "designation='$input_i', mac_address='$input_j', os_id=$input_k, user='$input_l',";
        $query .= "sold_date='$input_m'";
        $query .= " WHERE id=$x";
        $result = mysqli_query($con, $query);
        if (!$result) {
            die("Query Failed! " . mysqli_error($con));
        }
        header("location: add_entry.php?status=record-update");
    }
    // * kung sold ang status and then i-edit mo magiging orphan record yung data ng accessories_sold
    // TODO: to avoid orphan record from accessories_sold empty all the records that aggregate to cetain id
    if ($l > 0 && $input_c == 1) {

        $asi = $con->query("SELECT * FROM accessories_sold WHERE buyer_id=$x");
        while ($rowasi = mysqli_fetch_assoc($asi)) {
            $as_a = $rowasi['buyer_id'];
            $as_b = $rowasi['system_id'];
            $as_c = $rowasi['status'];
        }
        $as = $con->query("UPDATE accessories_sold SET buyer_id=0, system_id=0, status='false' WHERE system_id=$x") or die($con->error);
        $query = "UPDATE system_unit SET ";
        $query .= "date_checked='$input_a', location_id=$input_b, status_id=$input_c,";
        $query .= "cpu_id=$input_d, hdd_id=$input_e, ram_id=$input_f, mobo_id=$input_g, remarks='$input_m',";
        $query .= "designation='$input_i', mac_address='$input_j', os_id=$input_k, user='$input_l',";
        $query .= "sold_date='$input_m'";
        $query .= " WHERE id=$x";
        $result = mysqli_query($con, $query);
        $su = $con->query("UPDATE system_unit SET buyer_id=0 WHERE id=$x") or die($con->error);
        if (!$result) {
            die("Query Failed! " . mysqli_error($con));
        }
        header("location: add_entry.php?status=record-update");
    }
    // todo: if status is not sold and input status from user equal to sold then do this
    if ($c <> 1 && $input_c == 1) {
        echo "<script language='javascript'>alert('Editing Status to SOLD not on this page, FOR SALE page will')</script>";
        echo "<script>window.location.href='computer_menu.php';</script>";
    }
    // $page = $_SERVER['PHP_SELF'];
    // $sec = "3";
    // header("Refresh: $sec; url=$page");
}
?>
<div class="computer-container">
    <div class="section-container">
        <div class="section-left">
            <form action="" method="post" class="thisform">
                <div class="selections">
                    <label for="datechecked">Date Encoded</label>
                    <div class="selections">
                        <input type="date" style="max-width: 40%;" name="date_checked" value="<?php echo $a; ?>">
                    </div>
                </div>
                <div class="selections"><label for="location">Location</label>
                    <div class="selections">
                        <select name="location" style="width: 40%;" id="selectdropdown8" autofocus class="form-control select2" class="option" required>
                            <?php
                            $result = $con->query("SELECT * FROM system_location where id=$b") or die($con->query);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $af = $row['unit_location'];
                                $bf = $row['id'];
                                echo "<option value='$bf' disable selected>$af</option>";
                            }
                            $result1 = $con->query("SELECT * FROM system_location") or die($con->error);
                            while ($row = mysqli_fetch_assoc($result1)) {
                                $ag = $row['id'];
                                $bg = $row['unit_location']; ?>
                                <option value='<?php echo $ag; ?>'><?php echo $bg; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="selections"><label for="location">Status</label>
                    <div class="selections">
                        <select name="status" style="width: 40%;" id="selectdropdown9" autofocus class="form-control select2" class="option" required>
                            <?php
                            $result1 = $con->query("SELECT * FROM system_status where id=$c") or die($con->query);
                            while ($rows = mysqli_fetch_assoc($result1)) {
                                $stat = $rows['id'];
                                $stats = $rows['status']; ?>
                                <option value='<?php echo $stat; ?>' disable selected><?php echo $stats; ?></option>
                            <?php }
                            $result2 = $con->query("SELECT * FROM system_status") or die($con->error);
                            while ($rowstat = mysqli_fetch_assoc($result2)) {
                                $statid = $rowstat['id'];
                                $statt = $rowstat['status'];
                                echo "<option value='$statid'>$statt</option>";
                            } ?>
                        </select>
                    </div>
                </div>
                <div class="selections"><label for="location">CPU</label>
                    <div class="selections">
                        <select name="cpu" style="width: 40%;" id="selectdropdown10" autofocus class="form-control select2" class="option" required>
                            <?php
                            $result = $con->query("SELECT * FROM item_masterfile where id=$d") or die($con->query);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $a = $row['item_description'];
                                $b = $row['id'];
                                echo "<option value='$b' disable selected>$a</option>";
                            }
                            $result = $con->query("SELECT * FROM item_masterfile where cat_id=3") or die($con->error);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $a = $row['id'];
                                $b = $row['item_description']; ?>
                                <option value='<?php echo $a; ?>'><?php echo $b; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="selections"><label for="harddisk">hard disk</label>
                    <div class="selections">
                        <select name="hdd" style="width: 40%;" id="selectdropdown11" autofocus class="form-control select2" class="option" required>
                            <?php
                            $result = $con->query("SELECT * FROM item_masterfile where id=$e") or die($con->query);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $a = $row['item_description'];
                                $b = $row['id'];
                                echo "<option value='$b' disable selected>$a</option>";
                            }
                            $result = $con->query("SELECT * FROM item_masterfile where cat_id=5") or die($con->error);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $a = $row['id'];
                                $b = $row['item_description']; ?>
                                <option value='<?php echo $a; ?>'><?php echo $b; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="selections"><label for="ram">Ram</label>
                    <div class="selections">
                        <select name="ram" style="width: 40%;" id="selectdropdown12" autofocus class="form-control select2" class="option" required>
                            <?php
                            $result = $con->query("SELECT * FROM item_masterfile where id=$f") or die($con->query);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $a = $row['item_description'];
                                $b = $row['id'];
                                echo "<option value='$b' disable selected>$a</option>";
                            }
                            $result = $con->query("SELECT * FROM item_masterfile WHERE cat_id=13 ") or die($con->error);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $a = $row['id'];
                                $b = $row['item_description']; ?>
                                <option value='<?php echo $a; ?>'><?php echo $b; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="selections"><label for="mobo">Mobo</label>
                    <div class="selections">
                        <select name="mobo" style="width: 40%;" id="selectdropdown13" autofocus class="form-control select2" class="option" required>
                            <?php
                            $result8 = $con->query("SELECT * FROM item_masterfile where id=$g") or die($con->query);
                            while ($row = mysqli_fetch_assoc($result8)) {
                                $a = $row['item_description'];
                                $b = $row['id'];
                                echo "<option value='$b' disable selected>$a</option>";
                            }
                            $result = $con->query("SELECT * FROM item_masterfile where cat_id=8") or die($con->error);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $a = $row['id'];
                                $b = $row['item_description']; ?>
                                <option value='<?php echo $a; ?>'><?php echo $b; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="selections"><label for="os">OS</label>
                    <div class="selections">
                        <select name="os" style="width: 40%;" id="selectdropdown14" autofocus class="form-control select2" class="option" required>
                            <?php
                            $result = $con->query("SELECT * FROM item_masterfile where id=$n") or die($con->query);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $a = $row['item_description'];
                                $b = $row['id']; ?>
                                <option value='<?php echo $b; ?>' disable selected><?php echo $a; ?></option>
                            <?php }
                            $result = $con->query("SELECT * FROM item_masterfile WHERE cat_id=10") or die($con->error);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $a = $row['id'];
                                $b = $row['item_description'];
                                echo "<option value='$a'>$b</option>";
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="addinput"><label for="designation">Designation</label></div>
                <div class="computerphp_input">
                    <input type="text" name="designation" value="<?php echo $i; ?>">
                </div>
                <div class="addinput"><label for="mac-address">Mac-Address</label></div>
                <div class="computerphp_input">
                    <input type="text" name="mac_address" value="<?php echo $j; ?>">
                </div>
                <div class="addinput"><label for="user">User</label></div>
                <div class="computerphp_input">
                    <input type="text" name="user" value="<?php echo $k; ?>">
                </div>
                <br />
                <label for="oho">Remarks</label>
                <br />
                <div class="erem">
                    <?php
                    $result = $con->query("SELECT * FROM system_unit where id=$x");
                    while ($row = mysqli_fetch_assoc($result)) {
                        $a = $row['remarks'];
                        $b = $row['id']; ?>
                        <textarea name="remarks" id="oho" row="10"><?php echo $a; ?></textarea>
                    <?php
                    }
                    ?>
                </div>
                <br />
                <input type="submit" name="submit" value="Update">
            </form>
        </div>
    </div>
</div>
<script src="../css/jquery-3.1.1.js"></script>
<script src="../css/select2.full.min.js"></script>
<script>
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()
    })
    ClassicEditor.create(document.getElementById('oho'));
</script>