<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<style>
    .form-wrapperr {
        display: flex;
        justify-content: center;
        margin: 0 auto;
        width: 80%;
        padding-top: 10px;
    }

    .form-wrapperr .text-item {
        background: pink;
        width: 400px;
        padding: 0;
    }

    .form-wrapperr input[type="text"] {
        border: 1px solid gray;
        font-size: 12px;
        padding: 0;
        margin: 0;
        width: 100%;
    }
</style>
<main class="body">
    <br />
    <div class="breadcrumbs">
        <h3>Registration Form</h3>
    </div>
    <br />
    <div class="form-wrapperr">
        <form action="" method="post">
            <div class="text-item">
                <input type="text" placeholder="Enter your Surname" required>
            </div>
            <div class="text-item">
                <input type="text" placeholder="Enter your Middlename" required>
            </div>
            <div class="text-item">
                <input type="text" placeholder="Enter your FirstName" required>
            </div>
            <div class="text-item">
                <input type="text" placeholder="Enter your Full Address" required>
            </div>
            <div class="text-item">
                <input type="text" placeholder="Enter your Spouse name" required>
            </div><br />
            <center>
                <div class="selections">
                    <input type="file" id="uploadimage" name="photo" required>
                    <label for="uploadimage">Upload Photo</label><br />
                </div>
            </center>
            <br />
            <center>
                <input type="submit" value="submit">
            </center>
        </form>
    </div>
    <br />
</main>

<br><br />
<?php include "../includes/footer.php"; ?>

</html>