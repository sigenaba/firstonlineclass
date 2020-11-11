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
        <img src="../images/logo.png">
    </div>
    <nav id=navbar>
        <h2>Gate Pass</h2>
    </nav>
    <?php
if(isset($_GET['sumid'])){
    $x=$_GET['sumid'];
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
        $result1 = $con->query("SELECT `itemdescription`,`qty` FROM `gatepass` WHERE `summary_id`=$x and g_status='save' LIMIT 0 , $rescount") or die($con->error);
    }else{
        $result1 = $con->query("SELECT `itemdescription`,`qty` FROM `gatepass` WHERE `summary_id`=$x and g_status='save' LIMIT 0 , 5") or die($con->error);
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
            $result2 = $con->query("SELECT `itemdescription`,`qty` FROM `gatepass` WHERE `summary_id`=$x and g_status='save' LIMIT 5 , $rescount") or die($con->error);
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