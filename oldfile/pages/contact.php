<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>

<main class="body">
    <h2 class="contact">Contact Info</h2>
    <br />
    <?Php
                $datetime = date("yy-m-d");
                $grossamount = $conn->query("SELECT rso,sum(amount)as gross FROM temp_sales group by rso having rso like 'BALAGOT%'") or die($conn->error);
                while ($grss = mysqli_fetch_assoc($grossamount)) {
                    $rsobalagot = $grss['rso'];
                    $rsogross = $grss['gross'];
                }
                echo "<h2>$rsogross</h2><br/>";
                $grossamount2 = $conn->query("SELECT rso,sum(amount)as gross FROM temp_sales group by rso having rso like 'PEDRO%'") or die($conn->error);
                while ($grss2 = mysqli_fetch_assoc($grossamount2)) {
                    $rsopep = $grss2['rso'];
                    $rsogross2 = $grss2['gross'];
                }
                
                if (mysqli_num_rows($grossamount2) < 1) {
                    $rsopep = 'PEPING';
                    $rsogross2 = 0;
                }
                echo "<h2>$rsogross2</h2><br/>";
                $grossamount3 = $conn->query("SELECT rso,sum(amount)as gross FROM temp_sales group by rso having rso like 'LOGISTIC%'") or die($conn->error);
                while ($grss3 = mysqli_fetch_assoc($grossamount3)) {
                    $rsoother = $grss3['rso'];
                    $rsogross3 = $grss3['gross'];
                }

                if (mysqli_num_rows($grossamount3) < 1) {
                    $rsoother = 'LOGISTICS';
                    $rsogross3 = 0;
                }
                echo "<h2>$rsogross3</h2><br/>";
                $grossamount4 = $conn->query("SELECT rso,sum(amount)as gross FROM temp_sales group by rso having rso like 'TANGLAO%'") or die($conn->error);
                while ($grss4 = mysqli_fetch_assoc($grossamount3)) {
                    $rsorochelle = $grss4['rso'];
                    $rsogross4 = $grss4['gross'];
                }

                if (mysqli_num_rows($grossamount4) < 1) {
                    $rsorochelle = 'ROCHELLE';
                    $rsogross4 = 0;
                }
                echo "<h2>$rsogross4</h2><br/>";
                ?>
    <br />
    <br />
    
</main>

<?php include "../includes/footer.php"; ?>
</body>

</html>