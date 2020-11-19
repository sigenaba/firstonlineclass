<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<?php include "../includes/db.php"; ?>
<main class="body">
    <br />
    <div class="breadcrumbs">
        <h3>Add entry <?php echo "\ " . $source; ?></h3>
    </div>
    <br />
    <?php
    $num_per_page = 15;
    if (isset($_GET['page'])) {
        $page = $_GET['page'];
    } else {
        $page = 1;
    }
    $start_from = ($page - 1) * 15;
    $result9 = $con->query("SELECT * FROM msoffice limit $start_from,$num_per_page") or die($con->error);
    if (isset($_POST['submit'])) {
        $a = date("yy/m/d");
        $b = $_POST['user'];
        $c = $_POST['product_key'];
        $d = $_POST['remarks'];
        $query = "INSERT INTO msoffice (";
        $query .= "date,user,product_key,";
        $query .= "remarks";
        $query .= ")values(";
        $query .= "'$a','$b','$c','$d'";
        $query .= ")";
        $result = mysqli_query($con, $query);
        if (!$result) {
            die("Query Failed! " . mysqli_error($con));
        }
        header("location: add_entry.php?m2=5");
    }
    ?>
    <div class="section-container">
        <div class="section-left">
            <form action="" method="post" class="thisform">
                <center>
                    <H3 class="systemspec">Microsoft Office</h3><br />
                </center>
                <div class="selections">
                    <input type="text" name="user" placeholder="Enter Name" required>
                </div>
                <div class="selections">
                    <input type="text" name="productkey" placeholder="Enter Product-key" required>
                </div>
                <div class="erem">
                    <textarea name="remarks" id="oho"></textarea>
                </div>
                <br />
                <input type="submit" name="submit" value="Add to Database">
            </form>
        </div> <!-- section left end -->
        <div class="section-right">
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
                            <input type="submit" name="export8" id="btn-success" value="export" />
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
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>2020-10-10</td>
                        <td>fhei02-3539dj3-fhf35</td>
                        <td>Romeo</td>
                        <td>Alright baby</td>
                    </tr>
                </tbody>
            </table>

            <div class="pager-section">
                <?php
                $result = $con->query("SELECT * FROM systemunitlist") or die($con->error);
                $total_records = mysqli_num_rows($result);
                $total_pages = ceil($total_records / $num_per_page);
                if ($page > 1) {
                    echo "<a href='add_entry.php?page=" . ($page - 1) . "' id='pagerbutton'>Prev</a>";
                }
                for ($i = 1; $i <= $total_pages; $i++) {
                    echo "<a href='add_entry.php?page=" . $i . "' id='pagerbutton'>" . $i . "</a>";
                }
                if ($i > $page) {
                    echo "<a href='add_entry.php?page=" . ($page + 1) . "' id='pagerbutton'>Next</a>";
                } ?>
            </div>
            <br />
        </div>
    </div>
    <?php
    if (isset($_GET['m2'])) {
        $m2 = $_GET['m2']; ?>
        <div class="flash-data" data-flashdata="<?php echo $m2; ?>"></div>
    <?php } ?>
    <script src="../js/sweetalert2.all.min.js"></script> <!-- delete/save/update pop-up parter above js -->
    <script src="../js/jquery-3.5.1.min.js"></script> <!-- this is for delete/update pop-up-->
    <script src="../css/jquery-3.1.1.js"></script>
    <script src="../css/select2.full.min.js"></script>
    <script src="../js/table.js"></script>
    <script>
        $(function() {
            //Initialize Select2 Elements
            $('.select2').select2()
        })

        ClassicEditor.create(document.getElementById('oho'));

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
                    Swal.fire("unable to delete record");
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
                icon: 'warning',
                title: 'Something went wrong',
                text: 'Awwwww, add something else! record was already existing',
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
                text: 'Got it! Record updated successfully',
                confirmButtonColor: '#52C41A',
            })
        }
    </script>