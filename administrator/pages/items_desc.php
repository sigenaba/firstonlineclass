<?php
$num_per_page = 15;
if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 1;
}
$start_from = ($page - 1) * 15;
$query2 = "SELECT a.id,a.item_description,a.cat_id,b.category ";
$query2 .= "FROM item_masterfile a,item_category b where a.cat_id=b.id order by a.id asc limit $start_from, $num_per_page";
$item_result = mysqli_query($con, $query2);



$itemErr = "";
if (isset($_POST['submit'])) {
    $input_item = $_POST['description'];
    $input_id = $_POST['categoryid'];
    // making text become all capital
    $p = strtoupper($input_item);
    $result1 = $con->query("SELECT * FROM item_masterfile where item_description='$p'") or die($con->error);
    $count_row = mysqli_num_rows($result1);
    if ($count_row < 1) {
        $result2 = $con->query("INSERT INTO item_masterfile (item_description,cat_id) values ('$p',$input_id)") or die($con->error);
        header("location: add_entry.php?source=items&mm=6");
    }
    $itemErr = "This item name already exist!";
}
?>
<div class="section-container">
    <div class="section-left">
        <form action="" method="post" class="thisform">
            <center>
                <H3 class="systemspec">Items Description</h3><br /><br />
            </center>
            <center> <span class="error"><?php echo $itemErr; ?></span></center>
            <input type="text" name="description" placeholder="Enter Description" autofocus required>
            <br><br><br />
            <select name="categoryid" id="selectdropdown15" style="min-width: 200px;" class=" form-control select2" class="option" required>
                <option value="" disabled selected>Choose Category</option>
                <?php
                $result2 = $con->query("SELECT * FROM item_category") or die($con->error);
                while ($row = mysqli_fetch_assoc($result2)) {
                    $dbid = $row['id'];
                    $db_cat = $row['category'];
                    echo "<option value='$dbid'>$db_cat</option>";
                }
                ?>
            </select>
            <br><br><br />
            <input type="submit" name="submit" value="Add Item">
        </form>
    </div>

    <div class="section-right">
        <table class="table-sortable" border=1>
            <form method="post" action="../includes/db.php" id="btnexport">
                <span class="exportclass">
                    <input type="submit" name="export2" id="btn-success" value="Export" />
                    <label for="btn-success"><i class="fas fa-file-excel"></i></label>
                </span>
            </form>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Product Description</th>
                    <th>Category</th>
                    <th align="center">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php

                while ($row = mysqli_fetch_assoc($item_result)) {
                    $db_id = $row['id'];
                    $db_desc = $row['item_description'];
                    $db_catid = $row['cat_id'];
                    $db_category = $row['category'];
                    $deurl = "./add_entry.php?source=updateitems&cid=$db_id";

                    echo "<tr>";
                    echo "<td>$db_id</td>";
                    echo "<td>$db_desc</td>";
                    echo "<td>$db_category</td>";
                    echo "<td><a href='$deurl' class='userbtn'><input type='button' name='userbtnsbmt' value='EDIT'></a></td>";
                    // echo "<td><a href='$deurl' class='userbtn'><input type='button' name='userbtnsbmt' value='DEL'></a></td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>
        <div class="pager-section">
            <?php
            $result = $con->query("SELECT a.id,a.item_description,a.cat_id,b.category FROM item_masterfile a,item_category b where a.cat_id=b.id") or die($con->error);
            $total_records = mysqli_num_rows($result);
            $total_pages = ceil($total_records / $num_per_page);
            if ($page > 1) {
                echo "<a href='add_entry.php?source=items&page=" . ($page - 1) . "' id='pagerbutton'>Prev</a>";
            }
            for ($i = 1; $i <= $total_pages; $i++) {
                if ($i == $page) {
                    echo "<a style='background:#00FF00;' href='add_entry.php?source=items&page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
                } else {
                    echo "<a href='add_entry.php?source=items&page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
                }
            }
            if ($i > $page) {
                echo "<a href='add_entry.php?source=items&page=" . ($page + 1) . "' id='pagerbutton'>Next</a>";
            }
            ?>

        </div>
        <br />
    </div>
</div>
<!--section-container end -->
<br />

<?php
if (isset($_GET['mm'])) {
    $mm = $_GET['mm']; ?>
    <div class="flash-data" data-flashdata="<?php echo $mm; ?>"></div>
<?php } ?>
<!-- eto yung sa search list will only work if you 3 files namely: jquery-3.1.1.js, select2.full.min.js,
and select2.min.css  -->
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
    if (flashdata == 6) {
        Swal.fire({
            icon: 'success',
            title: 'Update Record',
            text: '1 record added successfully',
            confirmButtonColor: '#52C41A',
        })
    }
</script>