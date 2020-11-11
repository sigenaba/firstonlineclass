<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<?php include "../includes/db.php"; ?>

<main class="body">
    <h2 class="sold">Sold Unit</h2>
    <br />
    <?php
    if (isset($_GET['source'])) {
        $source = $_GET['source'];
    } else {
        $source = '';
    }
    switch ($source) {
        case 'ohmy';
            include "./soldpreview.php";
            break;
        case 'edit_post';
            include "includes/edit-post.php";
            break;
        default:
            include "soldview.php";
            break;
    }

    ?>
</main>
</body>

</html>