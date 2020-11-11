<?php
$nameErr = "";
if (isset($_POST['submit'])) {
    $input_buyer = $_POST['name'];
    // $input_email = $_POST['user_email'];
    $input_image = $_FILES['photo']['name'];
    $input_image_temp = $_FILES['photo']['tmp_name'];
    move_uploaded_file($input_image_temp, "../../images/uploaded_image/$input_image");
    $input_buyer = mysqli_real_escape_string($con, $input_buyer);
    // $hashF = "$2y$10$";
    // $salt = "iusesomecrazystrings22";
    // $hashF_salt = $hashF . $salt;
    // $input_pass = crypt($input_pass, $hashF_salt);
    $result1 = $con->query("SELECT * FROM buyer WHERE buyer_name='$input_buyer'") or die($con->error);
    $check = mysqli_num_rows($result1);
    if ($check < 1) {
        $result2 = $con->query("INSERT INTO buyer(buyer_name,buyer_photo) values ('$input_buyer','$input_image')") or die($con->error);
        header("location: add_entry.php?source=buyer&mm=6");
    } else {
        $nameErr = "Buyer name already exist";
    }
}
?>
<div class="section-container">
    <div class="section-left">
        <div class="item">
            <form action="" method="post" enctype="multipart/form-data" class="thisform userform">
                <div class="useravatar"><img src="../../images/uploaded_image/bg4.jpg"></div>
                <br />
                <label for="Username">Buyer</label><br /><span class="error"><?php echo $nameErr; ?></span>
                <div class="selections">
                    <input type="text" name="name" required placeholder="Enter Buyer name">
                </div>
                <br />
                <div class="selections">
                    <input type="file" id="uploadimage" name="photo">
                    <label for="uploadimage">Upload Image</label><br />
                </div>
                <br />
                <input type="submit" name="submit" value="Add Entry" class="userbtn">
            </form>
            <br />
        </div>
    </div>

    <div class="section-right">
        <?php
        $result = $con->query("SELECT * FROM buyer") or die($con->error);
        if (mysqli_num_rows($result) > 0) {
        ?>
            <div class="item">
                <table class="table-sortable" border=1 cellpadding=4 cellspacing=0>
                    <thead>
                        <tr>
                            <th>Buyer</th>
                            <th>Photo</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $result3 = $con->query("SELECT * FROM buyer order by buyer_name asc") or die($con->error);
                        while ($row = mysqli_fetch_assoc($result3)) {
                            $db_user_id = $row['id'];
                            $db_buyername = $row['buyer_name'];
                            $db_buyer_photo = $row['buyer_photo'];
                            $deurl = "./add_entry.php?source=updatebuyer&cid=$db_user_id";
                            // $seq = mysqli_num_rows($result); this will count all rows from the  table
                            echo "<tr>";
                            echo "<td>$db_buyername</td>";
                            echo "<td class='tdimage'><img src='../../images/uploaded_image/$db_buyer_photo'></td>";
                            echo "<td><a href='$deurl'><input type='button' name='userbtnsbmt' value='EDIT'></a></td>";
                            echo "</tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        <?php
        } else { ?>
            <div class="item">
                <table class="table-sortable" border=1 cellpadding=4 cellspacing=0>
                    <thead>
                        <tr>
                            <th>Buyer</th>
                            <th>Photo</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                    echo "<tr>";
                    echo "<td colspan='3'>No record found</td>";
                    echo "</tr>";
                } ?>
                    </tbody>
                </table>
            </div>

    </div>
    <?php
    if (isset($_GET['mm'])) : ?>
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

</div>
</main>

</html>