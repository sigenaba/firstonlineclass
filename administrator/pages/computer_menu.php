<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<div class="container">
    <main class="body">
        <?php
        alertmessage();
        if (isset($_GET['source'])) {
            $source = $_GET['source'];
        ?>
            <br />
            <div class="breadcrumbs">
                <h3>View / Edit entry <?php echo "\ " . $source; ?></h3>
            </div>
            <div class="container-option">
                <ul class="nav-links">
                    <li><a href="./computer_menu.php" class="computerphpbtn"><input type="button" value="For Sale"></a></li>
                    <li><a href="./computer_menu.php?source=sold" class="computerphpbtn"><input type="button" value="Sold"></a></li>
                    <li><a href="./computer_menu.php?source=reserve" class="computerphpbtn"><input type="button" value="Reserve"></a></li>
                    <li><a href="./computer_menu.php?source=currently_use" class="computerphpbtn"><input type="button" value="Currently Use"></a></li>
                </ul>
            </div>

        <?php
        } else {
            $source = 'For Sale';
        }
        switch ($source) {
            case 'sold';
                include "./sold_unit.php";
                break;
            case 'soldupdate';
                include "./soldupdate.php";
                break;
            case 'reserve';
                include "./reserveunit.php";
                break;
            case 'currently_use';
                include "currentlyuse.php";
                break;
            case 'search';
                include "currentlysearch.php";
                break;
            case 'searchsold';
                include "soldunitsearch.php";
                break;
            case 'searchreserve';
                include "reservesearch.php";
                break;
            case 'curview';
                include "currentlyview.php";
                break;
            case 'reserview';
                include "reserview.php";
                break;
            case 'updateitems';
                include "items_update.php";
                break;
            case 'updateunit';
                include "systemunit_update.php";
                break;
            case 'buyer';
                include "./buyer.php";
                break;
            case 'updatebuyer';
                include "./buyer_update.php";
                break;
            default:
                include "systemunitforsale.php";
                break;
        }
        ?>

    </main>
    <?php include "../includes/footer.php"; ?>
</div>

</html>