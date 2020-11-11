<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<?php include "../includes/db.php"; ?>
<main class="body">

    <?php
    alertmessage();
    if (isset($_GET['source'])) {
        $source = $_GET['source'];
    ?>
        <br />
        <div class="breadcrumbs">
            <h3>Add entry <?php echo "\ " . $source; ?></h3>
        </div>
        <div class="container-option">
            <ul class="nav-links">
                <li><a href="./add_entry.php" class="computerphpbtn"><input type="button" value="Computer Unit"></a></li>
                <li><a href="./add_entry.php?source=category" class="computerphpbtn"><input type="button" value="Category"></a></li>
                <li><a href="./add_entry.php?source=items" class="computerphpbtn"><input type="button" value="Items"></a></li>
                <li><a href="./add_entry.php?source=buyer" class="computerphpbtn"><input type="button" value="Add Buyer"></a></li>
            </ul>
        </div>
        <br><br><br />
    <?php
    } else {
        $source = 'System Unit';
    }
    switch ($source) {
        case 'category';
            include "./items_category.php";
            break;
        case 'updatecategory';
            include "./items_category_update.php";
            break;
        case 'items';
            include "items_desc.php";
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
            include "computer.php";
            break;
    }
    ?>
</main>
<?php
include "../includes/footer.php";
?>
</body>