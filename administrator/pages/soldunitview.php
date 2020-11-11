<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<link rel="stylesheet" href="../css/modal3.css">


<!-- #################################### modal start ############### -->

<div class="modal" id="modal">

    <div class="modal__content">

        <a href="computer_menu.php?source=sold" class="modal__close">&times;</a>

        <h3 class="modal__heading">Specifications</h3>
        <?php
        if (isset($_GET['curuseid'])) {
            $x = $_GET['curuseid'];
            $result2 = $con->query("SELECT * FROM systemunitlist WHERE id=$x") or die($con->error);
            while ($crow = mysqli_fetch_assoc($result2)) {
                $aa = $crow['id'];
                $bb = $crow['user'];
                $cc = $crow['cpu'];
                $dd = $crow['mobo'];
                $ee = $crow['mac_address'];
                $ff = $crow['os'];
                $gg = $crow['buyer_id'];
            }
            $result3 = $con->query("SELECT user,remarks from system_unit where id=$x") or die($con->error);
            while ($ro = mysqli_fetch_assoc($result3)) {
                $rem = $ro['remarks'];
                $upic = $ro['user'];
            }
            $result4 = $con->query("SELECT * FROM buyer WHERE buyer_name='$bb'") or die($con->error);
            while ($roo = mysqli_fetch_assoc($result4)) {
                $buyerphoto = $roo['buyer_photo'];
            }
        }

        ?>
        <?php
        if (empty($buyerphoto)) { ?>
            <div class="curviewphoto">
                <img src="../../images/uploaded_image/<?php echo $upic . '.png'; ?>" alt="">
            </div>
        <?php } else { ?>
            <div class="curviewphoto">
                <img src="../../images/uploaded_image/<?php echo $buyerphoto; ?>" alt="">
            </div>
        <?php }
        ?>
        <div class="modal__viewparagraph">
            <br /><span class="curview">ID: </span><br />
            <p><?php echo $aa; ?><br /><br /></p>
            <span class="curview">USER: </span><br />
            <p><?php echo $bb; ?><br /><br /></p>
            <span class="curview">CPU: </span><br />
            <p><?php echo $cc; ?><br /><br /></p>
            <span class="curview">MOTHERBOARD: </span><br />
            <p><?php echo $dd; ?><br /><br /></p>
            <span class="curview">Mac Address: </span><br />
            <p><?php echo $ee; ?><br /><br /></p>
            <span class="curview">OPERATING SYSTEM: </span><br />
            <p><?php echo $ff; ?><br /><br /></p>
            <span class="curview">REMARKS: </span><br />
            <p>
                <h4><?php echo $rem; ?></h4><br />
            </p>
        </div>

    </div>
</div>
<!-- #################################### modal end ############### -->