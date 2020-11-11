<?php
$catErr = "";
if (isset($_POST['submit'])) {
    $input_cat = $_POST['category'];
    $v = strtoupper($input_cat);
    $result1 = $con->query("SELECT * FROM item_category WHERE category='$input_cat'") or die($con->error);
    $count_row = mysqli_num_rows($result1);
    if ($count_row < 1) {
        $result2 = $con->query("INSERT INTO item_category(category)values('$v')") or die($con->error);
        header("location: add_entry.php?source=category&mm=6");
    }
    $catErr = "This category name already exist!";
}
?>
<div class="section-container">
    <div class="section-left">
        <div class="item">
            <form action="" method="post" class="thisform">
                <center>
                    <H3 class="systemspec">Category</h3><br /><br />
                </center>
                <span class="error"><?php echo $catErr; ?></span>

                <input type="text" name="category" placeholder="Enter Category name" required autofocus>
                <br><br><br />
                <input type="submit" name="submit" value="Add Category">
            </form>
        </div>
    </div>
    <div class="section-right">
        <div class="item">
            <table class="table-sortable" border=1;>
                <thead>
                    <tr>
                        <!-- <th>ID</th> -->
                        <th>Category</th>
                        <th align="center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $result3 = $con->query("SELECT * FROM item_category order by category asc") or die($con->error);
                    while ($row = mysqli_fetch_assoc($result3)) {
                        $db_id = $row['id'];
                        $db_category = $row['category'];
                        $deurl1 = "./add_entry.php?source=updatecategory&cid=$db_id";
                        // $deurl2 = "./items_category_delete.php?catid=$db_id";
                        echo "<tr>";
                        // echo "<td>$db_id</td>";
                        echo "<td>$db_category</td>";
                        echo "<td><a href='$deurl1' class='userbtn'><input type='button' name='userbtnsbmt' value='EDIT'></a></td>";
                        // echo "<td><a href='$deurl2' class='userbtndel'><input type='button' name='userbtnsbmt' value='DEL'></a></td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php
if (isset($_GET['mm'])) {
    $mm = $_GET['mm']; ?>
    <div class="flash-data" data-flashdata="<?php echo $mm; ?>"></div>
<?php } ?>
<script src="../js/sweetalert2.all.min.js"></script> <!-- delete/save/update pop-up parter above js -->
<script src="../js/jquery-3.5.1.min.js"></script> <!-- this is for delete/update pop-up-->
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

