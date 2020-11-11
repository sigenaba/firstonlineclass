<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<main class="body">

    <?php
    alertmessage();
    if (isset($_GET['source'])) {
        $source = $_GET['source'];
    ?>
        <br><br><br />
    <?php
    } else {
        $source = 'User';
    }
    switch ($source) {
        case 'update';
            include "edit_user.php";
            break;
        case 'delete_user';
            include "delete_user.php";
            break;
        default:
            include "add_user.php";
            break;
    }
    ?>
</main>
<?php
include "../includes/footer.php";
?>
</body>