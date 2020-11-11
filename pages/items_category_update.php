<?php
$catErr = $category = "";
if (isset($_GET['cid'])) {
    $cat_id = $_GET['cid'];
    $result1 = $con->query("SELECT * FROM item_category where id=$cat_id") or die($con->error);
    while ($row = mysqli_fetch_assoc($result1)) {
        $db_id = $row['id'];
        $db_category = $row['category'];
    }
    if (isset($_POST['submit'])) {
        $input_category = $_POST['category'];
        $v = strtoupper($input_category);
        $result2 = $con->query("SELECT * FROM item_category where category='$input_category'") or die($con->error);

        // pag ang $db_categoryname equals $input_category proceed to update or
        // pag hindi pa existing ang username mag proceed sa update
        if (mysqli_num_rows($result2) > 0) {
            $catErr = "Category name already exist";
        } else {
            $result3 = $con->query("UPDATE item_category SET category='$v' where id=$cat_id") or die($con->error);
            header("Location:add_entry.php?source=category&mm=5");
        }
    }
    // $page = $_SERVER['PHP_SELF'];
    // $sec = "3";
    // header("Refresh: $sec; url=$page");
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
                <input type="text" name="category" value="<?php echo $db_category; ?>" required autofocus>
                <br><br><br />
                <input type="submit" name="submit" value="Update Category">
            </form>
        </div>
    </div>
</div>

<script src="../css/jquery-3.1.1.js"></script>
<script src="../css/select2.full.min.js"></script>
<script src="../js/table.js"></script>
<script>
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()
    })
</script>

