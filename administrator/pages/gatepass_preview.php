<?php include "../includes/db.php"; ?>
<link rel="stylesheet" href="../css/style.css">
<script type="text/javascript">
    function print_page() {
        var ButtonControl = document.getElementById("btnprint");
        ButtonControl.style.visibility = "hidden";
        window.print();
    }
</script>
<div class="btn-container">
    <input type="button" id="btnprint" value="Print this Page" onclick="print_page()">
</div>

<div class="containerg">
    <div id="sunexlogo">
        <img src="../../images/sunx_logo.png">
    </div>
    <nav id=navbar>
        <h2>Gate Pass</h2>
    </nav>
    <?php
if(isset($_GET['sumid'])){
    $x=$_GET['sumid'];
    $finalcheck=$con->query("SELECT DISTINCT g_status FROM gatepass WHERE summary_id=$x")or die($con->error);
    if(mysqli_num_rows($finalcheck)>1){
echo "<h1>&nbsp;&nbsp;&nbsp;&nbsp;Attention! some data might not save yet!<br/></h1>";
echo "<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please continue your work and come here<br/></h2>";
echo "<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;when you're done!<br/><br/></h2>";
    }
}
$result=$con->query("SELECT * FROM gatepass WHERE summary_id=$x")or die($con->error);
while($row=mysqli_fetch_assoc($result)){
    $a=$row['gname'];
    $b=$row['gfrom'];
    $c=$row['gto'];
    $d=$row['date_encoded'];
    $e=$row['itemdescription'];
    $f=$row['receivedby'];
    $g=$row['preparedby'];
    $seq=1;
}
    ?>
    <div id="content1">
        <div class="print-left">
            <div class='prevg'>
                <span class='head'>Name: </span><p><?php echo $a;?></p>
                <span class='head'>From: </span><p><?php echo $b;?></p>
            </div>
        </div>
        <div class="print-right">
            <div class='prevg'>
                <span class='head'>Date: </span><p><?php echo $d;?></p>
                <span class='head'>To: </span><p><?php echo $c;?></p>
            </div>
        </div>
    </div>
    <div class="containeritems">
    <?php
    $result3=$con->query("SELECT * FROM gatepass where g_status is not null and summary_id=$x")or die($con->error);
    $rescount=mysqli_num_rows($result3);
    if($rescount<=5){
        $result1 = $con->query("SELECT `itemdescription`,`qty` FROM `gatepass` WHERE `summary_id`=$x LIMIT 0 , $rescount") or die($con->error);
    }else{
        $result1 = $con->query("SELECT `itemdescription`,`qty` FROM `gatepass` WHERE `summary_id`=$x LIMIT 0 , 5") or die($con->error);
    }
    ?>

    <div class="items-container1"> 
        <?php 
        $seq=1;
        while ($row=mysqli_fetch_assoc($result1)) : ?>
            <?php $aaa=$row['itemdescription']; ?>
            <?php $bbb=$row['qty']; ?>
            <span class='sequence'><?php echo $seq++;?>.</span><p class='line'><?php echo $aaa;?><small> (<?php echo $bbb;?>)</small></p>
        <?php endwhile ;?>
    </div>

    <div class="items-container2"> 
        <?php 
        if ($rescount>5){
            $seq=6;
            $result2 = $con->query("SELECT `itemdescription`,`qty` FROM `gatepass` WHERE `summary_id`=$x LIMIT 5 , $rescount") or die($con->error);
    while ($row=mysqli_fetch_assoc($result2)) { ;?>
    <?php $aa=$row['itemdescription']; ?>
    <?php $bb=$row['qty']; ?>
    <?php $cc=$aa.' ('.$bb.')'; ?>
        <span class='sequence'><?php echo $seq++;?>.</span><p class='line'><?php echo $aa;?><small> (<?php echo $bb;?>)</small></p>
    <?php }} ?>
</div>
</div>
<p class='nothingfollows'>NOTHING FOLLOWS!</p>


    <div id="content2">
        <p>Bearer is hereby allowed to take out from Sundance/Fashion Exchange Premises the following items stated below:</p>
    </div>
    <footer id=footerg>
        <div class="preparedby">
            <span>Prepared by:</span> <p><?php echo $g;?></p>
        </div>
        <br />
        <div class="preparedby">
            <span>Received by:</span> <p><?php echo $f;?></p>
        </div>
        <br /><br /><br />
        <div class="note">
            <p><b>Note:</b> Proper approval should be secured before the release of this Gate Pass.<br />
            <p>Items not indicated above cannot be taken out of Sundance/Fashion Exchange premises.</p>
        </div>
    </footer>
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
    // #####################################################
    if (flashdata == 6) {
swal("A wild Pikachu appeared! What do you want to do?", {
  buttons: {
    cancel: "Run away!",
    catch: {
      text: "Throw Pokéball!",
      value: "catch",
    },
    defeat: true,
  },
})
.then((value) => {
  switch (value) {
 
    case "defeat":
      swal("Pikachu fainted! You gained 500 XP!");
      break;
 
    case "catch":
      swal("Gotcha!", "Pikachu was caught!", "success");
      break;
 
    default:
      swal("Got run away safely!");
  }
});
    }

// ############## end of experiment ######################
</script>