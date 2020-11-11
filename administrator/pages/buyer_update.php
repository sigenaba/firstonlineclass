<?php
$nameErr = "";
if (isset($_GET['cid'])) {
    $user_id = $_GET['cid'];
    $result1 = $con->query("SELECT * FROM buyer WHERE id=$user_id") or die($con->error);
    while ($row = mysqli_fetch_assoc($result1)) {
        $db_buyername = $row['buyer_name'];
        $db_buyer_photo = $row['buyer_photo'];
    }

    if (isset($_POST['submit'])) {
        $input_buyername = $_POST['buyername'];
        $input_image = $_FILES['photo']['name'];
        $input_image_temp = $_FILES['photo']['tmp_name'];
        move_uploaded_file($input_image_temp, "../../images/uploaded_image/$input_image");
        $input_buyername = mysqli_real_escape_string($con, $input_buyername);
        if (empty($input_image)) {
            $result2 = $con->query("SELECT * FROM buyer WHERE id=$user_id") or die($con->query);
            while ($row = mysqli_fetch_assoc($result2)) {
                $input_image = $row['buyer_photo'];
            }
        }
        $result3 = $con->query("SELECT * FROM buyer WHERE buyer_name='$input_buyername'") or die($con->error);
        $checker = mysqli_num_rows($result3);
        // // pag ang $username equals $input_buyername proceed to update or
        // // pag hindi pa existing ang username mag proceed sa update
        if ($checker < 1 || $db_buyername == $input_buyername) {
            $query4 = "UPDATE buyer SET ";
            $query4 .= "buyer_name='$input_buyername', ";
            $query4 .= "buyer_photo='$input_image' ";
            $query4 .= "where id=$user_id";
            $result4 = mysqli_query($con, $query4);
            if (!$result4) {
                die("Query Failed!" . mysqli_error($con));
            }
            header("Location:add_entry.php?source=buyer&mm=5");
            // header("location: users.php");
        } else {
            $nameErr = "Buyername already exist!";
        }
    }
}

?>
<div class="section-container">
    <div class="item">
        <form action="" method="post" enctype="multipart/form-data" class="thisform userupdate">
            <div class="useravatar"><img src="../../images/bg4.jpg"></div>
            <br><br />
            <label for="Username">Buyername</label><br /><span class="error"><?php echo $nameErr; ?></span>
            <div class="selections">
                <input type="text" name="buyername" value="<?php echo $db_buyername; ?>" class="userinput" required>
            </div>
            <div class="selections">
                <input type="file" name="photo" id="uploadimage" value="<?php echo $db_buyer_photo; ?>">
                <label for="uploadimage">Upload Image</label><br />
            </div>
            <br />
            <input type="submit" name="submit" value="Update Buyer">
        </form>
    </div>
</div>