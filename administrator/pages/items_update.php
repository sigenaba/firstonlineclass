<?php
$itemsErr = $items = "";
if (isset($_GET['cid'])) {
    $items_id = $_GET['cid'];
    $result = $con->query("SELECT * FROM full_item WHERE id=$items_id") or die($con->error);
    while ($row = mysqli_fetch_assoc($result)) {
        $db_description = $row['description'];
        $db_cat = $row['category'];
        $db_catid = $row['catid'];
    }
}


if (isset($_POST['submitt'])) {
    $a = $_POST['items'];
    $b = strtoupper($a);
    $c = $_POST['meow'];

    $result = $con->query("SELECT * FROM item_masterfile where item_description='$c'") or die($con->error);
    // pag ang $db_categoryname equals $input_category proceed to update or
    // pag hindi pa existing ang username mag proceed sa update
    if (mysqli_num_rows($result) > 0) {
        $itemsErr = "Description name already exist";
    } else {
        $query = "UPDATE item_masterfile SET ";
        $query .= "item_description='$b', ";
        $query .= "cat_id='$c' ";
        $query .= "where id=$items_id";
        $result = mysqli_query($con, $query);
        if (!$result) {
            die("Query Failed! " . mysqli_error($con));
        }
        header("Location:add_entry.php?source=items&mm=5");
    }
}
?>
<div class="section-container">
    <div class="section-left">
        <div class="item">
            <form action="" method="post" class="thisform">
                <center>
                    <H3 class="systemspec">Update Items</h3><br /><br />
                </center>
                <div class="selections">
                    <span class="error"><?php echo $itemsErr; ?></span>
                </div>
                <input type="text" name="items" value="<?php echo $db_description; ?>" autofocus required>
                <div class="selections">
                    <select name="meow" style="width: 60%;" id="" class="form-control select2" class="option">
                        <?php
                        $resultt = $con->query("SELECT distinct * FROM item_category") or die($con->query); ?>
                        <option value="<?php echo $db_catid; ?>" disable selected><?php echo $db_cat; ?></option>
                        <?php while ($row = mysqli_fetch_assoc($resultt)) {
                            $af = $row['id'];
                            $b = $row['category']; ?>
                            <option value="<?php echo $af; ?>"><?php echo $b; ?></option>
                        <?php
                        }
                        ?>
                    </select>
                </div>

                <input type="submit" name="submitt" class="itembutton" value="Update Items">
            </form>
        </div>
    </div>
</div>
<script src="../js/table.js"></script>
<script src="../css/jquery-3.1.1.js"></script>
<script src="../css/select2.full.min.js"></script>
<script>
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()
    })
</script>