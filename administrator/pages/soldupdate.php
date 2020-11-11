<?php
if (isset($_GET['cid'])) {
    // system_unit.id
    $x = $_GET['cid'];
    $result = $con->query("SELECT * FROM system_unit WHERE id=$x") or die($con->error);
    while ($row = mysqli_fetch_assoc($result)) {
        $a = $row['date_checked'];
        $c = $row['status_id'];
        $h = $row['remarks'];
        $n = $row['os_id'];
        $i = $row['designation'];
        $j = $row['mac_address'];
        $k = $row['user'];
        $l = $row['buyer_id'];
        $m = $row['sold_date'];
    }
}
$recordstat = "";
if (isset($_POST['submit1'])) {
    $byer_id = $_POST['buyer'];
    $iems_id = $_POST['accessories'];
    $qty = $_POST['qty'];
    // $recordstat = "<span style='color: red;'>You didn't add anything</span>";

    if (empty($iems_id)) {
        // todo: set the notification says (0 record updated)
        header("location: computer_menu.php?source=soldupdate&cid=$x&m=4");
    }
    // to trap the item transacted more than one, we won't allow transaction of the same item.
    $inqac = $con->query("SELECT distinct items_id,system_id FROM accessories_sold WHERE system_id=$x and items_id=$iems_id and STATUS!='tag'") or die($con->error);
    if (mysqli_num_rows($inqac) > 0) {
        // todo: set the notification says (record already exist)
        header("location: computer_menu.php?source=soldupdate&cid=$x&m=3");
        // $recordstat = "<span style='color: red;'>You already add this item</span>";
    } else {
        // todo: set the notification says (record successfully added) and
        // todo: insert data input by the user
        $add = $con->query("INSERT INTO accessories_sold (buyer_id,items_id,qty,system_id)values($byer_id,$iems_id,$qty,$x)") or die($con->error);
        $recordstat = "Record successfully added to queue, waiting to be ";
        $recordstat .= "<b>save<b/>";
        header("location: computer_menu.php?source=soldupdate&cid=$x&m=2");
    }
}
if (isset($_POST['submit2'])) {
    $byer_id = $_POST['buyer'];
    $os = $_POST['os'];
    $remarks = $_POST['remarks'];
    $status_id = 1;
    $sold_date = date("yy/m/d");

    // ? inquire if system_id already exist in accessories_sold ?
    $inquire1 = $con->query("SELECT * FROM accessoriesview where system_id=$x") or die($con->error);
    if (mysqli_num_rows($inquire1) > 0) {
        // ? count all records(A)
        $inquire2 = $con->query("SELECT * from accessoriesview WHERE system_id=$x") or die($con->error);
        $count1 = mysqli_num_rows($inquire2);
        // ? count all records unsave only(B)
        $inquire3 = $con->query("SELECT * from accessoriesview where STATUS='unsave' and system_id=$x") or die($con->error);
        $count2 = mysqli_num_rows($inquire3);
        // * inquire is A=B if its true then it is all unsave on status
        if ($count1 == $count2) {
            // ? is all status = unsave ?
            // todo: if it is then do this (record updated)
            $save = $con->query("UPDATE system_unit SET buyer_id=$byer_id,remarks='$remarks',os_id=$os,status_id=$status_id,sold_date='$sold_date' WHERE id=$x") or die($con->error);
            $updateas = $con->query("UPDATE accessories_sold SET status='save' WHERE system_id=$x and status!='tag'") or die($con->error);
            header("location: computer_menu.php?source=soldupdate&cid=$x&m=5");
        }
        // ? is all status = save ?
        if ($count2 == 0 && $count1 > $count2) {
            // todo: if it is then do this instead (record 0 updated)
            $save = $con->query("UPDATE system_unit SET buyer_id=$byer_id,os_id=$os,status_id=$status_id,sold_date='$sold_date' WHERE id=$x") or die($con->error);
            header("location: computer_menu.php?source=soldupdate&cid=$x&m=4");
        }
        if ($count1 > $count2 && $count2 <> 0) {
            // ? is status has save and unsave ?
            // todo: if it is then do this instead (Rec updated successfully)
            $save = $con->query("UPDATE system_unit SET buyer_id=$byer_id,remarks='$remarks',os_id=$os,status_id=$status_id,sold_date='$sold_date' WHERE id=$x") or die($con->error);
            $updateas = $con->query("UPDATE accessories_sold SET status='save' WHERE system_id=$x and status!='tag'") or die($con->error);
            header("location: computer_menu.php?source=soldupdate&cid=$x&m=5");
        }
    } else {
        // todo: if system_id is not exist in accesssories_sold then do this (rec 0 update)
        $save = $con->query("UPDATE system_unit SET buyer_id=$byer_id,remarks='$remarks',os_id=$os,status_id=$status_id,sold_date='$sold_date' WHERE id=$x") or die($con->error);
        header("location: computer_menu.php?source=soldupdate&cid=$x&m=4");
    }
}
?>
<div class="section-container">
    <div class="section-left">
        <form action="" method="post" class="thisform">
            <div class="selections"><label for="buyer">Buyer</label>
                <div class="selections">
                    <!-- * check if buyer exist -->
                    <?php
                    $chekinginfo = $con->query("SELECT buyer_id from system_unit WHERE id=$x") or die($con->error);
                    while ($checkrow = mysqli_fetch_assoc($chekinginfo)) {
                        $bid = $checkrow['buyer_id'];
                    }
                    ?>
                    <!-- * if exist do this -->
                    <?php
                    if ($bid > 0) {
                        $buyerdata = $con->query("SELECT * from systemunitlist where id=$x") or die($con->error);
                        while ($brow = mysqli_fetch_assoc($buyerdata)) {
                            $bid = $brow['buyer_id'];
                            $bname = $brow['buyername'];
                        }
                    ?>
                        <select name="buyer" id="selectdropdown16" class="form-control select2" class="option">
                            <option value="<?php echo $bid; ?>" disable selected><?php echo $bname; ?></option>
                        </select>
                    <?php } else { ?>
                        <!-- * and if not do this instead -->
                        <select name="buyer" id="selectdropdown16" class="form-control select2" class="option" required>
                            <option value="" disable selected>Choose</option>

                            <?php
                            $getbuyer = $con->query("SELECT *  FROM buyer") or die($con->error);
                            while ($getbrow = mysqli_fetch_assoc($getbuyer)) {
                                $buyerid = $getbrow['id'];
                                $buyername = $getbrow['buyer_name'];
                                echo "<option value='$buyerid'>$buyername</option>";
                            }
                            ?>
                        </select>
                    <?php } ?>
                </div>
            </div>

            <div class="selections"><label for="os">OS</label>
                <div class="selections">
                    <select name="os" id="selectdropdown17" class="form-control select2" class="option" required>
                        <?php
                        $result = $con->query("SELECT * FROM item_masterfile where id=$n") or die($con->query);
                        while ($row = mysqli_fetch_assoc($result)) {
                            $a = $row['item_description'];
                            $b = $row['id']; ?>
                            <option value='<?php echo $b; ?>' disable selected><?php echo $a; ?></option>
                        <?php
                        }
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
            <br />
            <div class="selections"><label for="oho">Remarks</label>
                <br />
                <div class="erem">
                    <?php
                    $result = $con->query("SELECT * FROM system_unit where id=$x");
                    while ($row = mysqli_fetch_assoc($result)) {
                        $a = $row['remarks'];
                        $b = $row['id']; ?>
                        <textarea name="remarks" id="oho" row="10" cols="30" value="<?php echo $a; ?>"><?php echo $a; ?></textarea>
                    <?php
                    }
                    ?>
                </div>
            </div>

            <br />

            <div class="selections">
                <select name="accessories" id="selectdropdown18" class="form-control select2" autofocus class="option">
                    <?php
                    $result = $con->query("SELECT * FROM item_masterfile where cat_id in(1,2,4,6,7,9,11,12,14)") or die($con->query); ?>
                    <option value='' disable selected>Choose Accessories</option>
                    <?php while ($row = mysqli_fetch_assoc($result)) {
                        $a = $row['item_description'];
                        $b = $row['id'];
                        echo "<option value='$b'>$a</option>";
                    } ?>
                </select>
                <span class="qtyoption">
                    <select name="qty" id="selectdropdown19" class="form-control select2" class="option" required>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </span>
            </div>
            <div class="soldupdate">
                <input type="submit" accesskey="a" name="submit1" value="Add">
                <input type="submit" accesskey="s" name="submit2" class="btn-update" value="Save Record"></div>
        </form>
    </div> <!-- section-left -->
    <div class="section-right">
        <?php
        // query to check some items was save and was not
        $letmebetheone = $con->query("SELECT distinct status from accessoriesview WHERE system_id=$x") or die($con->error);
        $letmebetheon = mysqli_num_rows($letmebetheone);
        // query to check if system_id existing on accessories  table
        $letmebetheo = $con->query("SELECT * FROM accessoriesview WHERE system_id=$x") or die($con->error); ?>

        <table class="table-sortable" border="1" cellpadding="4" id="soldtable">
            <span style="color: #FBBC05;"><?php echo $recordstat; ?></span>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Buyer</th>
                    <th>Accessories</th>
                    <th>Qty</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody><?php
                    if ($letmebetheon = 1) {
                        while ($row1 = mysqli_fetch_assoc($letmebetheo)) {
                            $id = $row1['system_id'];
                            $buyer = $row1['buyer_name'];
                            $accessories = $row1['idesc'];
                            $items_id = $row1['items_id'];
                            $qty = $row1['qty'];
                            $stat = $row1['STATUS'];
                            echo "<tr>";
                            if ($stat == 'unsave') {
                                echo "<td style='color: #FAAD14;>$id</td>";
                            }
                            echo "<td style='color: green;'>$id</td>";
                            if ($stat == 'unsave') {
                                echo "<td style='color: #FAAD14;>$buyer</td>";
                            }
                            echo "<td style='color: green;'>$buyer</td>";
                            if ($stat == 'unsave') {
                                echo "<td style='color: #FAAD14;>$accessories</td>";
                            }
                            echo "<td style='color: green;'>$accessories</td>";
                            if ($stat == 'unsave') {
                                echo "<td style='color: #FAAD14;>$qty</td>";
                            }
                            echo "<td style='color: green;'>$qty</td>";
                            echo "<td><a href='accessoriesremove.php?sid=$x&itemsid=$items_id' class='btn-del'>Remove</a></td>";
                        }
                    }
                    if (mysqli_num_rows($letmebetheone) > 1) {
                        while ($row2 = mysqli_fetch_assoc($letmebetheo)) {
                            $id = $row2['system_id'];
                            $buyer = $row2['buyer_name'];
                            $accessories = $row2['idesc'];
                            $qty = $row2['qty'];
                            $items_id = $row2['items_id'];
                            echo "<tr>";
                            echo "<td style='color: #FAAD14;'>$id</td>";
                            echo "<td style='color: #FAAD14;'>$buyer</td>";
                            echo "<td style='color: #FAAD14;'>$accessories</td>";
                            echo "<td style='color: #FAAD14;'>$qty</td>";
                            echo "<td><a href='accessoriesremove.php?sid=$x&itemsid=$items_id' class='btn-del'>Remove</a></td>";
                        }
                    }
                    if (mysqli_num_rows($letmebetheone) < 1) {
                        echo "<tr>";
                        echo "<td colspan='5' style='color: red;'>No result found</td>";
                        echo "</tr>";
                    } ?>
            </tbody>
        </table>
    </div><!-- section-right -->
</div>
<!--section-container -->

</div>

<?php
if (isset($_GET['m'])) : ?>
    <?php $m = $_GET['m']; ?>
    <div class="flash-data" data-flashdata="<?php echo $m; ?>"></div>
<?php endif; ?>
<script src="../js/sweetalert2.all.min.js"></script> <!-- delete/save/update pop-up parter above js -->
<script src="../js/jquery-3.5.1.min.js"></script> <!-- this is for delete/update pop-up-->
<script src="../css/jquery-3.1.1.js"></script>
<script src="../css/select2.full.min.js"></script>
<script>
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()
    })

    // this is for 'remarks' taking textarea to another level :D
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
            icon: 'error',
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
            text: 'hurry! Record updated successfully',
            confirmButtonColor: '#52C41A',
        })
    }
</script>
</main>

</html>