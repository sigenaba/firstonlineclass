<?php
$nameErr = $db_username = $db_password = $db_userrole = $db_useremail = $db_user_image = "";
if (isset($_GET['cid'])) {
    $user_id = $_GET['cid'];
    $result1 = $con->query("SELECT * FROM user WHERE id=$user_id") or die($con->error);
    while ($row = mysqli_fetch_assoc($result1)) {
        $db_username = $row['username_user'];
        $db_password = $row['user_pass'];
        $db_useremail = $row['user_email'];
        $db_userimage = $row['user_image'];
        $db_userrole = $row['user_role'];
    }

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
        if (empty($input_image)) {
            $result2 = $con->query("SELECT * FROM user WHERE id=$user_id") or die($con->query);
            while ($row = mysqli_fetch_assoc($result2)) {
                $input_image = $row['user_image'];
            }
        }
        $result3 = $con->query("SELECT * FROM user WHERE username_user='$input_user'") or die($con->error);
        $check = mysqli_num_rows($result3);

        // pag ang $username equals $input_user proceed to update or
        // pag hindi pa existing ang username mag proceed sa update
        if ($db_username == $input_user || $check < 1) {
            $query4 = "UPDATE user SET ";
            $query4 .= "username_user='$input_user', ";
            $query4 .= "user_pass='$input_pass', ";
            $query4 .= "user_email='$input_email', ";
            $query4 .= "user_image='$input_image', ";
            $query4 .= "user_role='$input_user_role' ";
            $query4 .= "where id=$user_id";
            $result4 = mysqli_query($con, $query4);
            if (!$result4) {
                die("Query Failed!" . mysqli_error($con));
            }
            header("Location:users.php?status=record-update");
            // header("location: users.php");
        } else {
            $nameErr = "Username already exist!";
        }
    }
}

?>
<div class="section-container">
    <div class="section-left">
        <div class="item">
            <form action="" method="post" enctype="multipart/form-data" class="thisform userupdate">
                <div class="useravatar"><img src="../images/bg4.jpg"></div>
                <br><br />
                <label for="Username">Username</label><br /><span class="error"><?php echo $nameErr; ?></span>
                <br />
                <input type="text" name="name" value="<?php echo $db_username; ?>" class="userinput" required>
                <br />
                <label for="Password">Password</label>
                <br />
                <input type="password" name="password" value="<?php echo $db_password; ?>" class="userinput" required>
                <br />
                <label for="email">Email</label>
                <br />
                <input type="email" name="user_email" class="userinput" value="<?php echo $db_useremail; ?>" required>
                <br><br />
                <input type="file" name="photo" id="uploadimage" value="<?php echo $db_userimage; ?>">
                <label for="uploadimage">Upload Image</label><br />

                <br><br />
                <label for="userole">User role</label>
                <br />
                <div class="selections">
                <select name="user_role" id="" required>
                <option value="<?php echo $db_userrole;?>" disable selected>Choose from the List</option>
                <option value="admin">Admin</option>
                <option value="subscriber">Subscriber</option>
                </select>
                </div>
                
                <br />
                <input type="submit" name="submit" value="Update User">
            </form>
        </div>
    </div>

    <div class="section-right">
        <div class="item">
            <table class="table-sortable" border=6 cellpadding=4 cellspacing=0>
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Email</th>
                        <th>User Role</th>
                        <th>Photo</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $result5 = $con->query("SELECT * FROM user") or die($con->error);
                    while ($row = mysqli_fetch_assoc($result5)) {
                        $db_user_id = $row['id'];
                        $db_username = $row['username_user'];
                        $db_user_email = $row['user_email'];
                        $db_user_role = $row['user_role'];
                        $db_user_image = $row['user_image'];
                        $deurl = "./users.php?source=update&cid=$db_user_id";
                        // $seq = mysqli_num_rows($result); this will count all rows from the  table
                        echo "<tr>";
                        echo "<td>$db_username</td>";
                        echo "<td>$db_user_email</td>";
                        echo "<td>$db_user_role</td>";
                        echo "<td class='tdimage'><img src='../images/$db_user_image'></td>";
                        echo "<td><a href='$deurl'><input type='button' name='userbtnsbmt' value='EDIT'></a></td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="../js/table.js"> </script>