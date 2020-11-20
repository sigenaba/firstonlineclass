<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<link rel="stylesheet" href="../css/modal3.css">


<!-- #################################### modal start ############### -->

<div class="modal" id="modal">

    <div class="modal__content">

        <a href="computer_menu.php?source=currently_use" class="modal__close">&times;</a>

        <h3 class="modal__heading">Specifications</h3>
        <?php

        if (isset($_GET['curuseid'])) {
            $x = $_GET['curuseid'];
            $result2 = $con->query("SELECT * FROM systemunitlist WHERE id=$x") or die($con->error);
            while ($crow = mysqli_fetch_assoc($result2)) {
                $aa = $crow['id'];
                $bb = $crow['user'];
                $bb = strtolower($bb);
                $cc = $crow['cpu'];
                $dd = $crow['ram'];
                $ee = $crow['hdd'];
                $ff = $crow['mobo'];
                $gg = $crow['mac_address'];
                $hh = $crow['os'];
                $ii = $crow['buyer_id'];
            }

            $result3 = $con->query("SELECT * FROM buyer WHERE buyer_name like '$bb%'") or die($con->error);
            while ($roo = mysqli_fetch_assoc($result3)) {
                $buyerphoto = $roo['buyer_photo'];
                $buyerphoto = strtolower($buyerphoto);
            }
        }
        $result4 = $con->query("SELECT user,remarks from system_unit WHERE id=$x") or die($con->error);
        while ($r4 = mysqli_fetch_assoc($result4)) {
            $rem = $r4['remarks'];
        }

        ?>
        <?php

        if ($bb) { ?>
            <div class="curviewphoto">
                <img src="../../images/uploaded_image/<?php echo $bb . '.png'; ?>" alt="">
            </div>
        <?php } else { ?>
            <div class="curviewphoto">
                <img src="../../images/uploaded_image/bg4.jpg" alt="">
            </div>
        <?php }
        ?>
        <div class="modal__viewparagraph">
            <?php echo "<h2>$bb</h2>"; ?>
            <br /><span class="curview">ID: </span><br />
            <p><?php echo $aa; ?><br /><br /></p>
            <span class="curview">USER: </span><br />
            <p><?php echo $bb; ?><br /><br /></p>
            <span class="curview">CPU: </span><br />
            <p><?php echo $cc; ?><br /><br /></p>
            <span class="curview">RAM: </span><br />
            <p><?php echo $dd; ?><br /><br /></p>
            <span class="curview">Hard Disk Drive: </span><br />
            <p><?php echo $ee; ?><br /><br /></p>
            <span class="curview">MOTHERBOARD: </span><br />
            <p><?php echo $ff; ?><br /><br /></p>
            <span class="curview">Mac Address: </span><br />
            <p><?php echo $gg; ?><br /><br /></p>
            <span class="curview">OPERATING SYSTEM: </span><br />
            <p><?php echo $hh; ?><br /><br /></p>
            <span class="curview">REMARKS: </span><br />
            <p>
                <h4><?php echo $rem; ?></h4><br />
            </p>
        </div>

    </div>
</div>
<!-- #################################### modal end ############### -->