<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<main class="body">
    <br />
    <div class="breadcrumbs">
        <h3>User Profile</h3>
    </div>
    <?php
    $nameErr = "";
    $yourname = $_SESSION['username'];
    $result = $con->query("SELECT * from user WHERE username_user='$yourname'") or die($con->error);
    while ($row = mysqli_fetch_assoc($result)) {
        $user = $row['username_user'];
        $userpass = $row['user_pass'];
        $userimage = $row['user_image'];
        $useremail = $row['user_email'];
    }


    if (isset($_POST['submit'])) {
        $input_user = $_POST['name'];
        $input_pass = $_POST['password'];
        $input_email = $_POST['user_email'];
        $input_image = $_FILES['photo']['name'];
        $input_image_temp = $_FILES['photo']['tmp_name'];
        move_uploaded_file($input_image_temp, "../../images/$input_image");
        $input_user = mysqli_real_escape_string($con, $input_user);
        $input_pass = mysqli_real_escape_string($con, $input_pass);
        if (empty($input_image)) {
            $result2 = $con->query("SELECT * FROM user WHERE username_user='$yourname'") or die($con->query);
            while ($row = mysqli_fetch_assoc($result2)) {
                $input_image = $row['user_image'];
            }
        }
        $result3 = $con->query("SELECT * FROM user WHERE username_user='$input_user'") or die($con->error);
        $check = mysqli_num_rows($result3);

        // pag ang $username equals $input_user proceed to update or
        // pag hindi pa existing ang username mag proceed sa update
        if ($yourname === $input_user || $check < 1) {
            $query4 = "UPDATE user SET ";
            $query4 .= "username_user='$input_user', ";
            $query4 .= "user_pass='$input_pass', ";
            $query4 .= "user_email='$input_email', ";
            $query4 .= "user_image='$input_image' ";
            $query4 .= "where username_user='$yourname'";
            $result4 = mysqli_query($con, $query4);
            if (!$result4) {
                die("Query Failed!" . mysqli_error($con));
            }
            header("Location:user.php?status=record-update");
            // header("location: users.php");
        } else {
            $nameErr = "Username already exist!";
        }
    }

    ?>
    <div class="section-container">
        <div class="section-left">
            <div class="item">
                <form action="" method="post" enctype="multipart/form-data" class="thisform userupdate">
                    <div class="useravatar"><img src="../../images/<?php echo $userimage; ?>"></div>
                    <br><br />
                    <label for="Username">Username</label><br /><span class="error"><?php echo $nameErr; ?></span>
                    <br />
                    <input type="text" name="name" value="<?php echo $user; ?>" class="userinput" required>
                    <br />
                    <label for="Password">Password</label>
                    <br />
                    <input type="password" name="password" value="<?php echo $userpassword; ?>" class="userinput" required>
                    <br />
                    <label for="email">Email</label>
                    <br />
                    <input type="email" name="user_email" class="userinput" value="<?php echo $useremail; ?>" required>
                    <br><br />
                    <input type="file" name="photo" id="uploadimage" value="<?php echo $db_userimage; ?>">
                    <label for="uploadimage">Upload Image</label><br />
                    <br /><br /><br />
                    <input type="submit" name="submit" value="Update User">
                </form>
            </div>
        </div>


    </div> <!-- end of section-container-->
</main>

</html>