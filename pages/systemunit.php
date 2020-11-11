<?php
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
    header("location: add_entry.php?status=record-add");
}
?>
<div class="computer-container">
    <div class="computer">

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
                    <?php
                    $result4 = $con->query("SELECT * FROM system_status") or die($con->error);
                    while ($row = mysqli_fetch_assoc($result4)) {
                        $db_id = $row['id'];
                        $db_status = $row['status'];
                        echo "<option value='$db_id'>$db_status</option>";
                    }
                    ?>
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


    </div>
    <div class="section-right">
        <table class="tableclass" border=1 cellpadding=4 cellspacing=0>
            <thead>
                <tr>
                    <th>Status</th>
                    <th>cpu</th>
                    <th>hdd</th>
                    <th>ram</th>
                    <th>mobo</th>
                    <th>operating system</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($row = mysqli_fetch_assoc($item_result)) {
                    $a = $row['id'];
                    $b = $row['status'];
                    $c = $row['cpu'];
                    $d = $row['hdd'];
                    $e = $row['ram'];
                    $f = $row['mobo'];
                    $g = $row['os'];
                    $deurl = "./add_entry.php?source=updateunit&cid=$a";
                    echo "<tr>";
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