<?php ob_start();
session_start();
date_default_timezone_set('Asia/Manila'); ?>
<?php include "../includes/functions.php"; ?>
<?php include "../includes/db.php"; ?>

<?php auth(); ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Romeo's Report</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/table.css">
    <link rel="stylesheet" href="../css/select2.min.css">
    <link rel="shortcut icon" href="../../images/sunx_logo.png" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> <!-- preload -->
    <!--text area-->
    <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


</head>

<body>