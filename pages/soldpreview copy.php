<?php include "../includes/db.php"; ?>
<link rel="stylesheet" href="../css/style.css">
<script type="text/javascript">
    function print_page() {
        var ButtonControl = document.getElementById("btnprint");
        ButtonControl.style.visibility = "hidden";
        window.print();
    }
</script>
<div class="btn-container">
    <input type="button" id="btnprint" value="Print this Page" onclick="print_page()">
</div>

<div class="containerg">
    <div id="sunexlogo">
        <img src="../../images/sunx_logo.png">
    </div>
    <?php
    $datenow=date("yy-m-d");
    $timenow=date("h:i:sa");
    ?>
    <nav id=navbar>
        <span class="printed-date"><?php echo "Printed date: " . $datenow . $timenow;?> </span>
        <h2>Sold Unit</h2>
    </nav>
    <?php
    if (isset($_GET['cid'])) {
        $id = $_GET['cid'];

        $query = "SELECT * FROM systemunitlist WHERE id='$id'";
        $result = mysqli_query($con, $query);
        if (!$result) {
            die("Query Failed!" . mysqli_error($con));
        }
        while ($row = mysqli_fetch_assoc($result)) {
            $db_id = $row['id'];
            $db_date = $row['sold_date'];
            $db_cpu = $row['cpu'];
            $db_hd = $row['hdd'];
            $db_ram = $row['ram'];
            $db_mobo = $row['mobo'];
            $db_os = $row['os'];
            $db_buyername = $row['buyername'];
        }
        $resul2 = $con->query("SELECT * FROM buyer where buyer_name='$db_buyername'") or die($con->error);
        while ($roww = mysqli_fetch_assoc($resul2)) {
            $db2_buyer = $roww['id'];
            $db2_buyer_name = $roww['buyer_name'];
            $db_photo = $roww['buyer_photo'];
        }
    }
    ?>

    <div class="containeritems">

        <div class="sold-photo">
            <?Php
            if ($db_photo) { ?>
                <img class="tphot" src="../../images/uploaded_image/<?php echo $db_photo; ?>" alt="">
            <?php  } else {
                echo "<img src=''>";
            }
            ?>
        </div>

        <div class="items-container1a">
            <p>Buyer</p>
            <p>Sold Date</p>
            <p>Processor</p>
            <p>Hard Disk Drive</p>
            <p>RAM</p>
            <p>Motherboard</p>
            <p>Operating System</p>
            <p>Accessories</p>
        </div>

        <div class="items-container2a">
            <p><span class="srs">:</span><?php echo "$db2_buyer_name ($id)"; ?></p>
            <p><span class="srs">:</span><?php echo "$db_date"; ?></p>
            <p><span class="srs">:</span><?php echo "$db_cpu"; ?></p>
            <p><span class="srs">:</span><?php echo "$db_hd"; ?></p>
            <p><span class="srs">:</span><?php echo "$db_ram"; ?></p>
            <p><span class="srs">:</span><?php echo "$db_mobo"; ?></p>
            <p><span class="srs">:</span><?php echo "$db_os"; ?></p>
            <?php
            $result2 = $con->query("SELECT * FROM accessoriesview where status='save' and system_id=$id") or die($con->error);
            while ($acc = mysqli_fetch_assoc($result2)) {
                $item = $acc['system_id'];
                $item_desc = $acc['idesc'];
                $item_qty = $acc['qty'];
                $itemconcat = $item_desc . ' (' . $item_qty . ')'; ?>
                <p><span class='srsa'>&#x25C9</span><?php echo $item_desc; ?><small class='forqty'> (<?php echo $item_qty; ?>)</small></p>
            <?php }
            ?>
        </div>
    </div>


    <footer id=footerg>
        <div class="preparedby">
            <span>Prepared by:</span>
            <p>Romeo Bulalacao Jr.</p>
        </div>
        <br />
        <div class="preparedby">
            <span>Received by:</span>
            <p></p>
        </div>
    </footer>
</div>
<?php
if (isset($_GET['m'])) : ?>
    $m = $_GET['m']; ?>
    <div class="flash-data" data-flashdata="<?php echo $m; ?>"></div>
<?php endif; ?>
<script src="../js/sweetalert2.all.min.js"></script> <!-- delete/save/update pop-up parter above js -->
<script src="../js/jquery-3.5.1.min.js"></script> <!-- this is for delete/update pop-up-->
<script src="../css/jquery-3.1.1.js"></script>
<script src="../css/select2.full.min.js"></script>
<script src="../js/table.js"></script>

<script>
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()
    })


    // code below this line is for update/save/delete notification
    $('.btn-del').on('click', function(e) {
        e.preventDefault();
        const href = $(this).attr('href')
        Swal.fire({
            title: 'Are you sure buddy?',
            text: 'Record will be deleted!',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Delete Record',
        }).then((result) => {
            if (result.value) {
                document.location.href = href;
            } else {
                Swal.fire("unable to delete record");
            }
        })
    })

    const flashdata = $('.flash-data').data('flashdata')
    if (flashdata == 1) {
        Swal.fire({
            title: 'Record Deleted!',
            text: 'Record has been deleted!',
            icon: 'success'
        })
    }
    if (flashdata == 2) {
        Swal.fire({
            icon: 'info',
            title: 'Viola!',
            text: '1 record has been added but not yet save!'
        })
    }
    if (flashdata == 3) {
        Swal.fire({
            icon: 'error',
            title: 'Something went wrong',
            text: 'Awwwww, add something else! record was already existing',
            confirmButtonColor: '#FAAD14',
        })
    }

    if (flashdata == 4) {
        Swal.fire({
            icon: 'info',
            title: 'Update Record',
            text: 'Oh men, no update on accessories',
            confirmButtonColor: '#52C41A',
        })
    }
    if (flashdata == 5) {
        Swal.fire({
            icon: 'info',
            title: 'Update Record',
            text: 'hurry! Record updated successfully',
            confirmButtonColor: '#52C41A',
        })
    }
    // #####################################################
    if (flashdata == 6) {
        swal("A wild Pikachu appeared! What do you want to do?", {
                buttons: {
                    cancel: "Run away!",
                    catch: {
                        text: "Throw Pokéball!",
                        value: "catch",
                    },
                    defeat: true,
                },
            })
            .then((value) => {
                switch (value) {

                    case "defeat":
                        swal("Pikachu fainted! You gained 500 XP!");
                        break;

                    case "catch":
                        swal("Gotcha!", "Pikachu was caught!", "success");
                        break;

                    default:
                        swal("Got run away safely!");
                }
            });
    }

    // ############## end of experiment ######################
</script>