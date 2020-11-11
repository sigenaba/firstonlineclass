<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<?php include "../includes/db.php"; ?>
<main class="body">
    <br />
    <div class="breadcrumbs">
        <h3>Activity Logs</h3>
    </div>
    <?php databasecmd(); ?>
    <br />
    <center><a href="#bottom" id="top">Go to bottom <i class="fas fa-arrow-alt-circle-down"></i></a></center>

    <?php
    // ########################################################################
    $num_per_page = 20;
    if (isset($_GET['page'])) {
        $page = $_GET['page'];
    } else {
        $page = 1;
    }
    $start_from = ($page - 1) * 20;
    $result = $con->query("SELECT * FROM activitylog order by activitydate desc,activitytime desc limit $start_from,$num_per_page") or die($con->error);
    ?>
    <div id="computer-container">
    <div class="section-left">
        <table class="table-sortable" border="1" cellpadding="1" cellspacing="0">
        <form method="post" action="../includes/db.php" id="btnexport">
                <span class="exportclass">
                    <input type="submit" name="export3" id="btn-success" value="Export" />
                    <label for="btn-success"><i class="fas fa-file-excel"></i></label>
                </span>
            </form>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>access</th>
                    <th>date</th>
                    <th>time</th>
                    <th>device</th>
                    <th>user ip</th>
                    <th>Session</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($row = mysqli_fetch_assoc($result)) {
                    $db_user_id = $row['activitylog'];
                    $db_user = $row['user'];
                    $db_action = $row['action'];
                    $db_date = $row['activitydate'];
                    $db_time = $row['activitytime'];
                    $db_device = $row['device'];
                    $db_ip = $row['ip'];
                    $db_sess = $row['session'];
                    echo "<tr>";
                    echo "<td>$db_user</td>";
                    echo "<td>$db_action</td>";
                    echo "<td>$db_date</td>";
                    echo "<td>$db_time</td>";
                    echo "<td>$db_device</td>";
                    echo "<td>$db_ip</td>";
                    echo "<td>$db_sess</td>";
                    echo "<td class='del'><a href='./accessoriesremove.php?lid=$db_user_id'class='btn-del'>Delete</a></td>";
                    echo "</tr>";
                } ?>
            </tbody>
        </table>
        <?php ?>
        <div class="pager-section">
            <?php
            $result = $con->query("SELECT * FROM activitylog") or die($con->error);
            $total_records = mysqli_num_rows($result);
            $total_pages = ceil($total_records / $num_per_page);
            if ($page > 1) {
                echo "<a href='logs.php?page=" . ($page - 1) . "' id='pagerbutton'>Pre</a>";
            }
            for ($i = 1; $i <= $total_pages; $i++) {
                echo "<a href='logs.php?page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
            }
            if ($i > $page) {
                echo "<a href='logs.php?page=" . ($page + 1) . "' id='pagerbutton'>Next</a>";
            }
            ?>
            
        </div>
    </div>
    <br/>
</main>
<center><a href="#top" id="bottom">Go to top <i class="fas fa-arrow-alt-circle-up"></i></a></center>
<br><br />
<?php include "../includes/footer.php";
if (isset($_GET['m'])) {
    $m = $_GET['m']; ?>
    <div class="flash-data" data-flashdata="<?php echo $m; ?>"></div>
    <?php } ?>
<script src="../js/table.js"></script>
<script src="../js/sweetalert2.all.min.js"></script> <!-- delete/save/update pop-up parter above js -->
<script src="../js/jquery-3.5.1.min.js"></script> <!-- this is for delete/update pop-up-->
<script>
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
                Swal.fire("Unable to delete record");
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
        window.location.href='logs.php';
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
            text: 'Awwwww, you forgot to add items',
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
</html>