<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<?php include "../includes/db.php"; ?>
<link rel="stylesheet" href="../css/modal2.css">

<!-- #################################### modal start ############### -->

<div class="modal" id="modal">

<div class="modal__content">

<a href="gatepass.php" class="modal__close">&times;</a>

<h3 class="modal__heading">Gate Pass Edit Window</h3>
<?php
if(isset($_GET['sumid'])){
    $x=$_GET['sumid'];
    $result2=$con->query("SELECT distinct gname FROM gatepass WHERE summary_id=$x")or die($con->error);
}

if(isset($_POST['add'])){
    $add=$_POST['add'];
    $item=$_POST['itemdescription'];
    $qty=$_POST['qty'];
    $dupquery=$con->query("SELECT distinct itemdescription FROM gatepass WHERE itemdescription='$item' and summary_id=$x")or die($con->error);
    if(mysqli_num_rows($dupquery)<1){
    $result5=$con->query("SELECT distinct gname,gfrom,gto,preparedby,receivedby from gatepass WHERE summary_id=$x")or die($con->error);
    while($rww=mysqli_fetch_assoc($result5)){
        $gname=$rww['gname'];
        $gfrom=$rww['gfrom'];
        $gto=$rww['gto'];
        $prep=$rww['preparedby'];
        $rec=$rww['receivedby'];
    }
    $add=$con->query("INSERT INTO gatepass (summary_id,itemdescription,qty,preparedby,receivedby,gname,gfrom,gto)values($x,'$item',$qty,'$prep','$rec','$gname','$gfrom','$gto') ")or die($con->error);
}else{
    echo "<span style='color: red;'><h3>Failed to add, item already exist</h3></span>";
}
}
if(isset($_POST['update'])){
    $h = date("yy-m-d");
    $i= date("h:i:sa");
    $j= $h." ".$i;
    $result4 = $con->query("UPDATE gatepass SET g_status='save',summary_id=$x,date_encoded='$j' WHERE summary_id=$x") or die($con->error);
    header("location: gatepass.php");
}
?>
<div class="modal__paragraph">
<!-- ###################### Form Start ################################## -->
<div class="section-modal">
            <form action="" method="post" class="thisform">
                <div class="forname">
                    <?php
                    if(mysqli_num_rows($result2)<1){
                        $aa="syntax error";
                    }else{
                    while($roww=mysqli_fetch_assoc($result2)){
                        $aa=$roww['gname'];
                    }}
                    ?>
                    <input type="text" value="<?php echo $aa; ?>" name="gname" placeholder="Enter Name" required>
                </div>
                <br/>
                <div class="selections">
                    <select name="itemdescription" id="selectdropdown18" class="form-control select2" class="option">
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
                        <select name="qty" id="selectdropdown19" class="form-control select2" class="option" required>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </span>
                </div>
                <div class="gateupdate">
                    <input type="submit" name="add" value="Add"><br />
                    <input type="submit" name="update" class="btn-update" value="Save Record">
                </div>
            </form>
        </div> <!-- section-left -->
<!-- ######## Form endd ############################### -->
<table class="table-sortable">
    <thead>
        <tr>
            <th>ID</th>
            <th>Items</th>
            <th>Qty</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $result3=$con->query("SELECT * FROM gatepass WHERE summary_id=$x order by id asc")or die($con->error);
        while($rw=mysqli_fetch_assoc($result3)) :?>
        <?php $stat=$rw['g_status']; 
        $d=$rw['id'];
        $sumid=$rw['summary_id'];
        $e=$rw['itemdescription'];
        $f=$rw['qty'];
        echo "<tr>";
                            if ($stat == '') {
                                echo "<td style='color: #FAAD14;font-style=arial>$d</td>";
                            }
                            echo "<td style='color: green;font-style=arial;'>$d</td>";
                            if ($stat == '') {
                                echo "<td style='color: #FAAD14;font-style=arial>$e</td>";
                            }
                            echo "<td style='color: green;font-style=arial;'>$e</td>";
                            if ($stat == '') {
                                echo "<td style='color: #FAAD14;font-style=arial>$f</td>";
                            }
                            echo "<td style='color: green;font-style=arial;'>$f</td>";
                            echo "<td><a href='accessoriesremove.php?delete=$d&summid=$sumid' class='btn-del'>Remove</a></td>";
        echo "</tr>";
        endwhile; ?>
    </tbody>
</table>
</div>

</div>

</div>

<!-- #################################### modal end ############### -->
<main class="body">
<br />
<div class="breadcrumbs">
    <h3>Gatepass Records</h3>
</div>
<div class="container">
<?php
$result=$con->query("SELECT distinct summary_id,gname,gfrom,gto,date_encoded FROM gatepass WHERE g_status is not null")or die($con->error);?>

    <table class="table-sortable" border=1 cellpadding=4 cellspacing=0>
            <thead>
                <tr>
                <th>ID</th>
                <th>Name</th>
                <th>From</th>
                <th>To</th>
                <th>Date</th>
                <th colspan="2">Action</th>
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
                    <td><a href='#modal' class='registerLink' >Edit</a></td>
                </tr>
            <?php endwhile;
            if(mysqli_num_rows($result)<1) : ?>
            <tr>
            <td colspan="7" style="color: red;">No data found yet!</td>
            </tr>
            <?php endif;?>
        </tbody>
    </table>
</div>
<?php
if (isset($_GET['m'])) : ?>
    $m = $_GET['m']; ?>
    <div class="flash-data" data-flashdata="<?php echo $m; ?>"></div>
<?php endif; ?>
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
            text: 'hurry! Record updated successfully',
            confirmButtonColor: '#52C41A',
        })
    }
</script>



<?php include "../includes/footer.php"; ?>
