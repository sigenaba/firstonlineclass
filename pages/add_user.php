<br />
<div class="breadcrumbs">
    <h3>User Page \ add user</h3>
</div>
<?php
$nameErr = "";
if (isset($_POST['submit'])) {
    $input_user = $_POST['name'];
    $input_pass = $_POST['password'];
    $input_email = $_POST['user_email'];
    $input_user_role = $_POST['user_role'];
    $input_image = $_FILES['photo']['name'];
    $input_image_temp = $_FILES['photo']['tmp_name'];
    move_uploaded_file($input_image_temp, "../images/$input_image");
    $input_user = mysqli_real_escape_string($con, $input_user);
    $input_pass = mysqli_real_escape_string($con, $input_pass);
    // $hashF = "$2y$10$";
    // $salt = "iusesomecrazystrings22";
    // $hashF_salt = $hashF . $salt;
    // $input_pass = crypt($input_pass, $hashF_salt);
    $result1 = $con->query("SELECT * FROM user WHERE username_user='$input_user'") or die($con->error);
    $check = mysqli_num_rows($result1);
    if ($check < 1) {
        $result2 = $con->query("INSERT INTO user(username_user,user_pass,user_email,user_image,user_role,login_counter) values ('$input_user','$input_pass','$input_email','$input_image','$input_user_role',0)") or die($con->error);
        header("location: users.php?status=record-add");
    } else {
        $nameErr = "Username already exist";
    }
}
?>
<div class="section-container">
    <div class="section-left">
        <div class="item">
            <form action="" method="post" enctype="multipart/form-data" class="thisform userform">
                <div class="useravatar"><img src="../images/bg4.jpg"></div>
                <br />
                <label for="Username">Username</label><br /><span class="error"><?php echo $nameErr; ?></span>
                <input type="text" name="name" required placeholder="Enter Username">
                <input type="password" name="password" required placeholder="Enter Password">
                <input type="email" name="user_email" value="example@example.com" required>
                <br />
                <input type="file" id="uploadimage" name="photo" required>
                <label for="uploadimage">Upload Image</label><br />
                <br />
                <input type="text" name="user_role" required placeholder="Enter Restriction">
                <br />
                <input type="submit" name="submit" value="Add User" class="userbtn">
            </form>
            <br />
        </div>
    </div>

    <div class="section-right">
        <div class="item">
            <table class="table-sortable" border=1 cellpadding=4 cellspacing=0>
                <thead>
                    <tr>
                        <th>Username</th>
                        <!-- <th>Email</th> -->
                        <th>User Role</th>
                        <th>Photo</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $result3 = $con->query("SELECT * FROM user") or die($con->error);
                    while ($row = mysqli_fetch_assoc($result3)) {
                        $db_user_id = $row['id'];
                        $db_username = $row['username_user'];
                        $db_user_email = $row['user_email'];
                        $db_user_role = $row['user_role'];
                        $db_user_image = $row['user_image'];
                        $deurl = "./users.php?source=update&cid=$db_user_id";
                        // $seq = mysqli_num_rows($result); this will count all rows from the  table
                        echo "<tr>";
                        echo "<td>$db_username</td>";
                        // echo "<td>$db_user_email</td>";
                        echo "<td>$db_user_role</td>";
                        echo "<td class='tdimage'><img src='../images/$db_user_image'></td>";
                        echo "<td><a href='$deurl'><input type='button' name='userbtnsbmt' value='EDIT'></a></td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>
            <br />
        </div>
    </div>
</div> <!-- end of section-container-->
<script src="..js/table.js"> </script>