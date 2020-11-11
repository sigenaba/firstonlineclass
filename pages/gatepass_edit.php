<?php include "../includes/db.php";?>
<?php include "../includes/header.php";?>
<?php include "../includes/navigation.php";?>

<link rel="stylesheet" href="../css/modal.css">
<div class="container">
    <main class="body">

        <br />
        <div class="breadcrumbs">
            <h3>Gate Pass</h3>
        </div>
<!-- ################################# start of the modal ############################### -->

<div class="modal" id="modal">
    <div class="modal__content">
      <a href="gatepass_form.php" class="modal__close"  data-dismiss="modal" accesskey="&#27">&times;</a>
      <h2 class="modal__heading">Edit Item</h2>
      <?php
      if(isset($_GET['sumid'])){
          $xx=$_GET['sumid'];
      }
      if(isset($_POST['applychanges'])){
          $d=$_POST['itemdescription'];
          $dd=$_POST['qty'];
          $result6=$con->query("UPDATE gatepass SET itemdescription='$d',qty=$dd WHERE id=$xx")or die($con->error);
            header("location: gatepass_form.php?m=5");
      }
      ?>
        <p class="modal_paragraph">
            
            <form action="" method="post">
             <div class="selections">
                    <select name="itemdescription" style="width: 70%;" id="selectdropdown18" class="form-control select2" class="option">
                        <?php
                         $result5=$con->query("SELECT itemdescription from gatepass WHERE id=$xx and g_status is null")or die($con->error);
                         while($ww=mysqli_fetch_assoc($result5)) :?>
                         <?php $xxx=$ww['itemdescription'];?>
                             <option value='<?php echo $ww['itemdescription'];?>' disable selected><?php echo $xxx;?></option>
                         <?php endwhile;
                        $result = $con->query("SELECT * FROM item_masterfile where cat_id in(1,2,4,6,7,9,11,12,14)") or die($con->query); ?>
                        <?php while ($row = mysqli_fetch_assoc($result)) {
                            $a = $row['item_description'];
                            $b = $row['id']; ?>
                            <option value='<?php echo $a; ?>'><?php echo $a; ?></option>
                        <?php } ?>
                    </select>

                    <span class="qtyoption">
                        <select name="qty" id="selectdropdown19" style="width: 15%;" class="form-control select2" class="option" required>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </span>
            </div>
            <br/>
            <input type="submit" name="applychanges" value="Apply changes">
            </form>
        </p>
    </div>
</div>

<!-- ################################# end of the modal ############################### -->


        <?php
        if (isset($_POST['submit1'])) {
            $a = $_POST['gfrom'];
            $b = $_POST['gto'];
            $c = $_POST['gname'];
            $d = $_POST['itemdescription'];
            $e = $_POST['qty'];
            $f = $_POST['preparedby'];
            $g = $_POST['receivedby'];
            $h = date("yy-m-d");
            $i= date("h:i:sa");
            $j= $h." ".$i;
            if ($d) {
                $query = "INSERT INTO gatepass (";
                $query .= "gfrom,gto,gname,itemdescription,";
                $query .= "qty,preparedby,receivedby,date_encoded";
                $query .= ")values(";
                $query .= "'$a',";
                $query .= "'$b',";
                $query .= "'$c',";
                $query .= "'$d',";
                $query .= "'$e',";
                $query .= "'$f',";
                $query .= "'$g',";
                $query .= "'$j'";
                $query .= ")";
                $result = mysqli_query($con, $query);
                if (!$result) {
                    die("Query Failed" . mysqli_error($con));
                }
                header("location: gatepass_form.php?m=2");
} else {
                header("location: gatepass_form.php?m=3");
            }
        }
        if (isset($_POST['submit2'])) {
            $result3 = $con->query("SELECT summary_id FROM gatepass WHERE g_status is null") or die($con->error);
            $result1 = $con->query("SELECT max(summary_id)as summary_id FROM gatepass") or die($con->error);
                $row = mysqli_fetch_assoc($result1);
                    $x = $row['summary_id'];
                    $x =$x+1;
            if (mysqli_num_rows($result3) > 0) {
                $result4 = $con->query("UPDATE gatepass SET g_status='save',summary_id=$x WHERE g_status is null") or die($con->error);
                header("location: gatepass_form.php?m=5");
            } else {
                header("location: gatepass_form.php?m=3");
            }
        }
        $_query1 = $con->query("SELECT distinct gname,gfrom,gto,preparedby,receivedby FROM gatepass WHERE g_status is null") or die($con->error);
        if (mysqli_num_rows($_query1) > 0) {
            while ($row1 = mysqli_fetch_assoc($_query1)) {
                $a1 = $row1['gname'];
                $b1 = $row1['gfrom'];
                $c1 = $row1['gto'];
                $d1 = $row1['preparedby'];
                $e1 = $row1['receivedby'];
            }
        } else {
            $a1 = "";
            $b1 = "";
            $c1 = "";
            $d1 = "";
            $e1 = "";
        }
        $_query2 = $con->query("SELECT * FROM gatepass WHERE g_status is null") or die($con->errror); ?>


        <br />
        <div class="section-left">
            <form action="" method="post" class="thisform">
                <div class="fromto">
                    <div class="div">
                        <center><label for="from">From</label><br /></center>
                        <input type="text" name="gfrom" value="<?php echo $b1; ?>" placeholder="Enter Location" autofocus required>
                    </div>
                    <div class="div">
                        <center><label for="to">To</label><br /></center>
                        <input type="text" name="gto" value="<?php echo $c1; ?>" placeholder="Enter Location" required>
                    </div>
                </div>
                <div class="forname">
                    <input type="text" value="<?php echo $a1; ?>" name="gname" placeholder="Enter Name" required>
                </div>
                <div class="forname">
                    <input type="text" name="preparedby" value="<?php echo $d1; ?>" placeholder="Prepared by" required>
                </div>
                <div class="forname">
                    <input type="text" name="receivedby" value="<?php echo $e1; ?>" placeholder="Received by" required>
                </div>


                <div class="selections">
                    <label><span class="gate">Add item to send-out:</span></label>
                </div>
                <div class="selections">
                    <select name="itemdescription" style="width: 35%;" id="selectdropdown18" class="form-control select2" class="option">
                        <?php
                        $result = $con->query("SELECT * FROM item_masterfile where cat_id in(1,2,4,6,7,9,11,12,14)") or die($con->query); ?>
                        <option value='' disable selected>Choose Accessories</option>
                        <?php while ($row = mysqli_fetch_assoc($result)) {
                            $a = $row['item_description'];
                            $b = $row['id']; ?>
                            <option value='<?php echo $a; ?>'><?php echo $a; ?></option>
                        <?php } ?>
                    </select>

                    <span class="qtyoption">
                        <select name="qty" id="selectdropdown19" style="width: 6%;" class="form-control select2" class="option" required>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </span>
                </div>
                <div class="gateupdate">
                    <input type="submit" name="submit1" value="Add"><br />
                    <input type="submit" name="submit2" class="btn-update" value="Save Record">
                </div>
            </form>
        </div> <!-- section-left -->


        <div class="section-right">
            <?php
            // query to check if system_id existing on accessories  table
            $letmebetheo = $con->query("SELECT * FROM gatepass WHERE g_status is null") or die($con->error); ?>
            <table class="table-sortable" border="1" cellpadding="4" id="soldtable">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>item</th>
                        <th>FROM</th>
                        <th>TO</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if (mysqli_num_rows($_query1) > 0) {
                        while ($row = mysqli_fetch_assoc($_query2)) : ?>
                            <tr>
                            <td><?php echo $row['id']; ?></td>
                            <td><?php echo  $row['itemdescription']; ?></td>
                            <td><?php echo $row['gfrom']; ?></td>
                            <td><?php echo $row['gto']; ?></td>
                            <td><a href="">edit</a></td>
                        <?php endwhile;                 
                    }
                    $check_count = mysqli_num_rows($letmebetheo);
                    if ($check_count < 1) : ?>
                        <tr>
                            <td colspan="5" style="color: red;">No record found!</td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>


    </main>
</div> <!-- container end -->
</body>
<?php
if (isset($_GET['m'])) {
    $m = $_GET['m']; ?>
    <div class="flash-data" data-flashdata="<?php echo $m; ?>"></div>
<?php } ?>
<script src="../js/sweetalert2.all.min.js"></script> <!-- delete/save/update pop-up parter above js -->
<script src="../js/jquery-3.5.1.min.js"></script> <!-- this is for delete/update pop-up-->
<script src="../css/jquery-3.1.1.js"></script>
<script src="../css/select2.full.min.js"></script>
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
<!-- footer here -->
</html>