<?php
session_start();
date_default_timezone_set('Asia/Manila');
unset($_SESSION['username']);
unset($_SESSION['login']);
unset($_SESSION['user_role']);
unset($_SESSION['user_id']);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Welcome Sunex People</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="shortcut icon" href="../../images/sunx_logo.png">

</head>

<?php require_once './includes/db.php' ?>

<body>
    <?php include "./includes/functions.php"; ?>

    <div class="container-flex">
        <div class="items one"></div>
        <div class="items two">
            <form action="login.php" method="post" class="form">
                <div class="avatar">
                    <img src="./images/bg3.png" alt="">
                </div>
                <label for="Login">
                    <h3>Login Page(admin)</h3>
                </label>
                <?php alertmessage(); ?>
                <div class="container-user">
                    <i class="fas fa-user"></i>
                    <input type="text" name="username" placeholder="Username" required>
                </div>
                <div class="container-password">
                    <i class="fas fa-key"></i>
                    <input type="password" name="password" placeholder="Password" required>
                    <input type="submit" name="login" value="Submit">
                </div>

            </form>
        </div>
    </div>
</body>

</html>