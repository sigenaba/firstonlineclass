<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<main class="body">
    <br />
    <div class="breadcrumbs">
        <h3>Microsoft Office</h3>
    </div>
    <br />
    <?php
    if (isset($_GET['msid'])) {
        $x = $_GET['msid'];
    }
    $ms = $con->query("SELECT * FROM msoffice WHERE id=$x") or die($con->error);
    while ($mrow = mysqli_fetch_assoc($ms)) {
        $a = $mrow['id'];
        $b = $mrow['user'];
        $c = $mrow['product_key'];
        $d = $mrow['locationn'];
        $e = $mrow['remarks'];
    }

    if (isset($_POST['submit'])) {
        $a = $_POST['user'];
        $b = $_POST['product_key'];
        $c = $_POST['location'];
        $d = $_POST['remarks'];
        $ums = $con->query("UPDATE msoffice set user='$a',product_key='$b',locationn='$c',remarks='$d' WHERE id=$x") or die($con->error);
        header("location: microsoft.php");
    } ?>
    <div class="section-container">
        <div class="section-left">
            <form action="" method="post" class="thisform">
                <center>
                    <H3 class="systemspec">Microsoft Office</h3><br />
                </center>
                <label for="user">User</label>
                <div class="selections">
                    <input type="text" name="user" value="<?php echo $b; ?>">
                </div>
                <label for="product key">Product Key</label>
                <div class="selections">
                    <input type="text" name="product_key" value="<?php echo $c; ?>">
                </div>
                <label for="location">Location</label>
                <div class="selections">
                    <input type="text" name="location" value="<?php echo $d; ?>">
                </div>
                <label for="remarks">Remarks</label>
                <div class="erem">
                    <textarea name="remarks" id="oho"><?php echo $e; ?></textarea>
                </div>
                <br />
                <input type="submit" name="submit" value="Update">
            </form>
        </div> <!-- section left end -->
    </div>
    <br />
</main>

<?php include "../includes/footer.php"; ?>
<script src="../js/table.js"></script>
<script>
    ClassicEditor.create(document.getElementById('oho'));
</script>

</html>