<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>
<meta http-equiv="refresh" content="300; url=index.php" />
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<div class="container">
    <main class="body">
        <br />
        <?php alertmessage(); ?>
        <div class="breadcrumbs">
            <h3>Home</h3>
        </div>

        <div class="homepage">
            <div class="content content1">
                <?php
                $sold = $con->query("SELECT count(status)as qty from systemunitlist WHERE status='SOLD' and duplicate='false'");
                while ($row = mysqli_fetch_assoc($sold)) {
                    $sqty = $row['qty'];
                }
                ?>
                <div class="content1a contenta"><i class="far fa-clipboard"></i>&nbsp;&nbsp;Computer Unit (Sold)<span class="contentnumber"><?php echo $sqty; ?></span></div>
                <div class="contentb content1b"><a href="computer_menu.php?source=sold">View Details</a></div>
            </div>
            <div class="content content2">
                <?php
                $forsale = $con->query("SELECT count(status)as qty from systemunitlist WHERE status='FOR SALE' and duplicate='false'");
                while ($row = mysqli_fetch_assoc($forsale)) {
                    $fqty = $row['qty'];
                }
                ?>
                <div class="content2a contenta"><i class="fas fa-hand-holding-usd"></i>&nbsp;&nbsp;Computer Unit (For Sale)<span class="contentnumber"><?php echo $fqty; ?></span></div>
                <div class="contentb content2b"><a href="computer_menu.php">View Details</a></div>
            </div>
            <div class="content content3">
                <?php
                $cuse = $con->query("SELECT count(status)as qty from systemunitlist WHERE status='CURRENTLY USE' and duplicate='false'");
                while ($row = mysqli_fetch_assoc($cuse)) {
                    $cqty = $row['qty'];
                }
                ?>
                <div class="content3a contenta"><i class="far fa-clipboard"></i>&nbsp;&nbsp;Computer Unit (Currenly Use)<span class="contentnumber"><?php echo $cqty; ?></span></div>
                <div class="contentb content3b"><a href="computer_menu.php?source=currently_use">View Details</a></div>
            </div>
            <div class="content content4">
                <?php
                $reserve = $con->query("SELECT count(status)as qty from systemunitlist WHERE status='RESERVE' and duplicate='false'");
                while ($row = mysqli_fetch_assoc($reserve)) {
                    $rqty = $row['qty'];
                }
                ?>
                <div class="content4a contenta"><i class="far fa-clipboard"></i>&nbsp;&nbsp;Computer Unit (Reserve)<span class="contentnumber"><?php echo $rqty; ?></span></div>
                <div class="contentb content4b"><a href="computer_menu.php?source=reserve">View Details</a></div>
            </div>

            <div class="content content5">
                <?php
                $conn = new mysqli('localhost', 'root', '', 'sunex') or die($conn->error);
                $datetoday = date("yy-m-d");
                $salesmar = $conn->query("SELECT sum(amount)as amount from sales where date='$datetoday'") or die($conn->error);
                while ($mgross = mysqli_fetch_assoc($salesmar)) {
                    $maramount = $mgross['amount'];
                    $finalgross = number_format($maramount);
                }
                $reserve = $con->query("SELECT count(status)as qty from systemunitlist WHERE status='RESERVE' and duplicate='false'");
                while ($row = mysqli_fetch_assoc($reserve)) {
                    $rqty = $row['qty'];
                }
                ?>
                <div class="content5a contenta"><i class="far fa-clipboard"></i>&nbsp;&nbsp;Mar Sales Today<span class="contentnumber"><?php echo '&#x20B1;' . $finalgross; ?></span></div>
                <div class="contentb content5b"><a href="salesreport.php">View Details</a></div>
            </div>

            <div class="content6">
                <?Php
                $datetime = date("yy-m-d");
                ?>
                <script type="text/javascript">
                    google.charts.load("current", {
                        packages: ["corechart"]
                    });
                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {
                        var data = google.visualization.arrayToDataTable([
                            ['RSO', 'Gross amount'],
                            ['Peping', 11],
                            ['Angie', 2],
                            ['Mike', 2],
                            ['Roger', 2],
                            ['Rochelle', 7]
                        ]);

                        var options = {
                            title: 'Daily Sales Report for <?php echo $datetime; ?>',
                            is3D: true,
                        };

                        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                        chart.draw(data, options);
                    }
                </script>
                <div id="piechart_3d"></div>
            </div>
            <iframe style="width: 100%; height: 500px;" src="http://us1.rssfeedwidget.com/getrss.php?time=1604911308721&amp;x=https%3A%2F%2Fdata.gmanetwork.com%2Fgno%2Frss%2Fscitech%2Fweather%2Ffeed.xml&amp;w=200&amp;h=500&amp;bc=333333&amp;bw=1&amp;bgc=transparent&amp;m=20&amp;it=true&amp;t=(default)&amp;tc=333333&amp;ts=15&amp;tb=transparent&amp;il=true&amp;lc=0000FF&amp;ls=14&amp;lb=false&amp;id=true&amp;dc=333333&amp;ds=14&amp;idt=true&amp;dtc=284F2D&amp;dts=12">
                Weather Report
            </iframe>

        </div>
    </main>
</div>
<?php include "../includes/footer.php"; ?>
</body>
<script>
    $(window).on("load", function() {
        $(".loader-container").fadeOut(1000);
    });
</script>

</html>