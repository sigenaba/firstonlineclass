<?php
// function evaluatelogin()
// {
//     if (isset($_GET['status']) && $_GET['status'] == "error_login") { 
//         <span style="padding: 0 0 0 3.5rem;color: red;font-size: 14px;">Incorrect Username or Password!</span>
//         
//     }
// } 


function auth()
{
    if (!isset($_SESSION['username']) || (trim($_SESSION['username']) == '')) {
        header("location: ../index.php");
        exit();
    }
}

function databasecmd()
{
    global $con;
    if (isset($_GET['delete'])) {
        $id = $_GET['delete'];
        $query = "DELETE FROM activitylog WHERE activitylog=$id";
        $result = mysqli_query($con, $query);
        if (!$result) {
            die("Query Failed" . mysqli_error($con));
        }
        // header("location:./logs.php");
        // header("location: posts.php");
        echo '<script>alert("Record has been deleted!");</script>';
        echo "<script>window.location.href='./logs.php';</script>";
    }
}

function confirmQuery($result)
{
    global $con;
    if (!$result) {
        die('Query Failed ' . mysqli_error($con));
    }
}

function alertmessage()
{
    if (isset($_GET['status'])) {
        $status_name = $_GET['status'];
        if ($status_name == 'record-update') { ?>
            <div class="alert-message update">
                <h3>You've just successfully Update the record!</h3>
            </div>
        <?php
        }

        if ($status_name == 'record-add') { ?>
            <div class="alert-message add">
                <h3>You've just successfully Added the record!</h3>
            </div>
        <?php
        }
        if ($status_name == 'error_login') { ?>
            <div class="login"><span style="padding: 0 0 0 3.5rem;color: red;font-size: 14px;padding: 0;">Incorrect Username or Password!</span>
            </div>
        <?php
        }
        if ($status_name == 'welcome') { ?>
            <div class="welcomebanner">
                <div class="item">Welcome <?php echo $_SESSION['username']; ?></div>
            </div>
        <?php
        }
        if ($status_name == 'record-deleted') { ?>
            <div class="alert-message delete">
                <h3>Record has been deleted!</h3>
            </div>
<?php
        }
    }
}

?>
<style>
    .update,
    .add,
    .delete {
        -webkit-animation: seconds 1.0s forwards;
        -webkit-animation-iteration-count: 1;
        -webkit-animation-delay: 3s;
        animation: seconds 1.0s forwards;
        animation-iteration-count: 1;
        animation-delay: 2s;
        position: relative;
        background: #BFDDC8;
        height: 50px;
        margin: 0 auto;
        padding: 0;
        top: -2px;
        text-align: center;
    }

    .update>h3 {
        color: green;
        padding: 5px;
        line-height: 50px;
    }

    .add>h3 {
        color: white;
        padding: 5px;
        line-height: 50px;
    }

    .delete>h3 {
        color: red;
        padding: 5px;
        line-height: 50px;
    }

    .login {
        -webkit-animation: seconds 1.0s forwards;
        -webkit-animation-iteration-count: 1;
        -webkit-animation-delay: 5s;
        animation: seconds 1.0s forwards;
        animation-iteration-count: 1;
        animation-delay: 5s;
        position: relative;
        width: 100%;
    }

    .welcomebanner {
        -webkit-animation: segundo 1.0s forwards;
        -webkit-animation-iteration-count: 1;
        -webkit-animation-delay: 2s;
        animation: segundo 1.0s forwards;
        animation-iteration-count: 1;
        animation-delay: 2s;
        position: relative;
        width: 100%;
        background: linear-gradient(to right, red, orange);
        height: 50px;
        color: white;
        top: -25;
    }

    .welcomebanner>.item {
        padding: 10px 0 10px 10px;
        line-height: 50px;
        font-size: 1.4rem;
    }

    @-webkit-keyframes seconds {
        0% {
            opacity: 1;
        }

        100% {
            opacity: 0;
            left: -9999px;
        }
    }

    @keyframes seconds {
        0% {
            opacity: 1;
        }

        100% {
            opacity: 0;
            left: -9999px;
        }
    }

    @-webkit-keyframes segundo {
        0% {
            opacity: 1;
            transition: all 0.2s ease;
            transform: translate(0, 0);
        }

        100% {
            opacity: 0;
            transition: all 0.2s ease;
            transform: translate(0, -40px);
            left: -9999px;
            display: none;
        }
    }

    @keyframes segundo {
        0% {
            opacity: 1;
            transition: all 0.2s ease;
            transform: translate(0, 0);
        }

        100% {
            opacity: 0;
            transition: all 0.2s ease;
            transform: translate(0, -40px);
            left: -9999px;
            display: none;
        }
    }

    @media (max-width:396px) {

        .update,
        .add {
            display: flex;
            justify-content: center;
            height: 100px;
        }

    }
</style>