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
        width: 400px;
        padding: 0;
        border-radius: 20px;
    }

    .form-wrapperr input[type="text"],
    .form-wrapperr input[type="date"] {
        border: 1px solid gray;
        font-size: 15px;
        padding: 0;
        margin: 0;
        width: 100%;
    }

    .form-wrapper input[type="date"] {
        padding: 4px 0;
        margin-bottom: 5px;
    }

    .form-wrapperr input[type="date"] {
        font-size: 16px;
    }

    @media (max-width: 360px) {
        .form-wrapperr .text-item {
            width: 340px;
        }
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
                <input type="text" placeholder="Enter your name i.e Dela Cruz, Juan S." required>
            </div>
            <div class="text-item">
                <input type="text" placeholder="Enter your Complete Address" required>
            </div>
            <div class="text-item">
                <select name="province" id="selectdropdown21" style="width:100%;" autofocus class="form-control select2" class="option" required>
                    <option value="" disabled selected>Choose Province from the List</option>
                    <?php
                    $result3 = $con->query("SELECT * FROM province") or die($con->query);
                    while ($row = mysqli_fetch_assoc($result3)) {
                        $db_id = $row['province'];
                        $db_loc = $row['provinced'];
                        echo "<option value='$db_id'>$db_loc</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="text-item">
                <select name="city" id="selectdropdown22" style="width: 100%;" autofocus class="form-control select2" class="option" required>
                    <option value="" disabled selected>Choose City from the List</option>
                    <?php
                    $result3 = $con->query("SELECT * FROM city") or die($con->query);
                    while ($row = mysqli_fetch_assoc($result3)) {
                        $db_id = $row['city'];
                        $db_loc = $row['cityd'];
                        echo "<option value='$db_id'>$db_loc</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="text-item">
                <input type="text" placeholder="Enter your mobile number" required>
            </div>
            <br />
            <div class="text-item">
                <label for="dob">Enter your Birth Date</label>
                <br />
                <input type="date" name="dob" required>
            </div>
            <div class="text-item">
                <input type="text" placeholder="Enter your Gender" required>
            </div>
            <div class="text-item">
                <input type="text" placeholder="Enter your birth place" required>
            </div>
            <div class="text-item">
                <select name="status" style="width: 100%;" id="selectdropdown23" class="form-control select2" class="option">
                    <option value="" disable selected>Choose Status</option>
                    <option value="single">Single</option>
                    <option value="married">Married</option>
                    <option value="widow">Widow</option>
                </select>
            </div>
            <div class="text-item">
                <input type="text" placeholder="Enter your Spouse name" required>
            </div>
            <div class="text-item">
                <textarea name="remarks" id="oho" row="10" placeholder="Remarks"></textarea>
            </div>
            <br /><br />

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
<script src="../css/jquery-3.1.1.js"></script>
<script src="../css/select2.full.min.js"></script>
<script>
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()
    })
    ClassicEditor.create(document.getElementById('oho'));
</script>