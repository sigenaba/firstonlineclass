<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<main class="body">
    <br />
    <div class="breadcrumbs">
        <h3>Microsoft Office</h3>
    </div>
    <br />

    <div id="computer-container">
        <div class="section-left">
            <table class="table-sortable" border="1" cellpadding="1" cellspacing="0">
                <div class="wrapper-search-export">
                    <?php
                    if (isset($_POST['name'])) {
                        $name = $_POST['name'];
                        header("location: rsosales_search.php?name=$name");
                    }
                    ?>
                    <div id="search">
                        <form action="" method="post">
                            <input type="text" name="name" placeholder="Search item" accesskey="s"><i class="fas fa-search"></i>
                        </form>
                    </div>

                    <div class="exportclass">
                        <form method="post" action="../includes/db.php" id="btnexport">
                            <input type="submit" name="export9" id="btn-success" value="export" />
                            <label for="btn-success"><i class="fas fa-file-excel"></i></label>
                        </form>
                    </div>
                </div>
                <thead>
                    <tr>
                        <th>date</th>
                        <th>user</th>
                        <th>productkey</th>
                        <th>Location</th>
                        <th>remarks</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $msoffice = $con->query("SELECT * from msoffice") or die($con->error);
                    while ($mrow = mysqli_fetch_assoc($msoffice)) {
                        $a = $mrow['date'];
                        $b = $mrow['user'];
                        $c = $mrow['product_key'];
                        $d = $mrow['locationn'];
                        $e = $mrow['remarks'];
                        $f = $mrow['id']; ?>
                        <tr>
                            <td><?php echo $a; ?></td>
                            <td><?php echo $b; ?></td>
                            <td><?php echo $c; ?></td>
                            <td><?php echo $d; ?></td>
                            <td><?php echo $e; ?></td>
                            <td><a href="microsoftupdate.php?msid=<?php echo $f; ?>">Edit</a></td>
                        </tr>
                    <?php
                    } ?>
                </tbody>
            </table>
            <?php ?>

        </div>
    </div>
    <br />
</main>

<?php include "../includes/footer.php"; ?>

<script src="../js/table.js"></script>

</html>