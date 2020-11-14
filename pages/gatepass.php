<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<?php include "../includes/db.php"; ?>

<main class="body">
<br />
<div class="breadcrumbs">
    <h3>Gatepass Records</h3>
</div>
<div class="container">
    <?php
    $result=$con->query("SELECT distinct summary_id,gname,gfrom,gto,date_encoded FROM gatepass WHERE g_status is not null")or die($con->error);?>
    <div class="section-left">
        <table class="table-sortable" border=1 cellpadding=4 cellspacing=0>
        <div class="wrapper-search-export">
            <?php
                if (isset($_POST['name'])) {
                    $name = $_POST['name'];
                    header("location: gatepasearch.php?name=$name");
                }
            ?>
            <div id="search">
                <form action="" method="post">
                    <input type="text" name="name" placeholder="Search name" accesskey="s"><i class="fas fa-search"></i>
                </form>
            </div>

            <div class="exportclass">
                <form method="post" action="../includes/db.php" id="btnexport">
                    <input type="submit" name="export4" id="btn-success" value="export" />
                    <label for="btn-success"><i class="fas fa-file-excel"></i></label>
                </form>
            </div>
        </div>
                <thead>
                    <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>From</th>
                    <th>To</th>
                    <th>Date</th>
                    <th>Action</th>
                    </tr>
                </thead>
            <tbody>
                <?php
                while($row=mysqli_fetch_assoc($result)) :?>
                    <tr>
                        <td><?php echo $row['summary_id'];?></td>
                        <td><?php echo $row['gname']; ?></td>
                        <td><?php echo $row['gfrom'];?> </td>
                        <td><?php echo $row['gto'];?></td>
                        <td><?php echo $row['date_encoded'];?></td>
                        <td><a href='gatepass_preview.php?sumid=<?php echo $row['summary_id'];?>' target='_blank'>View</a></td>
                        <!-- <td><a href='gatepassedit.php?sumid=<?php echo $row['summary_id'];?>'>Edit</a></td> -->
                    </tr>
                <?php endwhile;
                if(mysqli_num_rows($result)<1) : ?>
                <tr>
                <td colspan="6" style="color: red;">No data found yet!</td>
                </tr>
                <?php endif;?>
            </tbody>
        </table>
        <script src="../js/table.js"></script>
    </div>
</div>

<?php include "../includes/footer.php"; ?>
