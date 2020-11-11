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
        <div class="grid-wrapper">

            <div class="grid-item grid-content">
                <?php
                $sold=$con->query("SELECT count(status)as qty from systemunitlist WHERE status='SOLD'");
                while ($row=mysqli_fetch_assoc($sold)) {
                    $sqty=$row['qty'];
                }
                ?>
                <span class="contentnumber"><?php echo $sqty;?></span>
                <div class="content1a contenta"><i class="far fa-clipboard"></i>&nbsp;&nbsp;Computer Unit (Sold)</div>
                <div class="contentb content1b"><a href="computer_menu.php?source=sold">View Details</a></div>
            </div> <!-- end of grid-item -->

            <div class="grid-item grid-content">
                <?php
                    $forsale=$con->query("SELECT count(status)as qty from systemunitlist WHERE status='FOR SALE'");
                    while ($row=mysqli_fetch_assoc($forsale)) {
                        $fqty=$row['qty'];
                    }
                ?>
                <span class="contentnumber"><?php echo $fqty;?></span>
                <div class="content2a contenta"><i class="fas fa-hand-holding-usd"></i>&nbsp;&nbsp;Computer Unit (For Sale)</div>
                <div class="contentb content2b"><a href="computer_menu.php">View Details</a></div>
            </div> <!-- end of grid-item -->

            <div class="grid-item grid-content">
                <?php
                    $cuse=$con->query("SELECT count(status)as qty from systemunitlist WHERE status='CURRENTLY USE'");
                    while ($row=mysqli_fetch_assoc($cuse)) {
                        $cqty=$row['qty'];
                    }
                ?>
                <span class="contentnumber"><?php echo $cqty;?></span>
                <div class="content3a contenta"><i class="far fa-clipboard"></i>&nbsp;&nbsp;Computer Unit (Currenly Use)</div>
                <div class="contentb content3b"><a href="computer_menu.php?source=currently_use">View Details</a></div>
            </div> <!-- end of grid-item -->

            <div class="grid-item grid-content">
                <?php
                    $reserve=$con->query("SELECT count(status)as qty from systemunitlist WHERE status='RESERVE'");
                    while ($row=mysqli_fetch_assoc($reserve)) {
                        $rqty=$row['qty'];
                    }
                ?>
                <span class="contentnumber"><?php echo $rqty;?></span>
                <div class="content4a contenta"><i class="far fa-clipboard"></i>&nbsp;&nbsp;Computer Unit (Reserve)</div>
                <div class="contentb content4b"><a href="computer_menu.php?source=reserve">View Details</a></div>
            </div> <!-- end of grid-item -->

            <div class="grid-item grid-content">
                <?php
                    $conn=new mysqli('localhost','root','','sunex')or die($conn->error);
                    $datetoday=date("yy-m-d");
                    $salesmar=$conn->query("SELECT sum(amount)as amount from sales where date='$datetoday'")or die($conn->error);
                    while($mgross=mysqli_fetch_assoc($salesmar)){
                        $maramount=$mgross['amount'];
                        $finalgross=number_format($maramount);
                    }
                        $reserve=$con->query("SELECT count(status)as qty from systemunitlist WHERE status='RESERVE'");
                        while ($row=mysqli_fetch_assoc($reserve)) {
                            $rqty=$row['qty'];
                        }
                ?>
                <span class="contentnumber"><?php echo '&#x20B1;'.$finalgross;?></span>
                <div class="content5a contenta"><i class="far fa-clipboard"></i>&nbsp;&nbsp;Mar Sales Today</div>
                <div class="contentb content5b"><a href="salesreport.php">View Details</a></div>
            </div> <!-- end of grid-item -->
                <?Php 
                    $datetime=date("yy-m-d");
                ?>
                <script type="text/javascript">
                    google.charts.load("current", {packages:["corechart"]});
                    google.charts.setOnLoadCallback(drawChart);
                    function drawChart() {
                        var data = google.visualization.arrayToDataTable([
                        ['RSO', 'Gross amount'],
                        ['Peping',     11],
                        ['Angie',      2],
                        ['Mike',  2],
                        ['Roger', 2],
                        ['Rochelle',    7]
                        ]);

                        var options = {
                        title: 'Daily Sales Report for <?php echo $datetime ;?>',
                        is3D: true,
                        };

                        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                        chart.draw(data, options);}
                 </script>
            <div class="grid-items" id="piechart_3d"></div>
        </div> <!-- end of grid-wrapper -->       
                <!-- <div class="weather-report">
                <iframe src="http://us1.rssfeedwidget.com/getrss.php?time=1604911308721&amp;x=https%3A%2F%2Fdata.gmanetwork.com%2Fgno%2Frss%2Fscitech%2Fweather%2Ffeed.xml&amp;w=200&amp;h=500&amp;bc=333333&amp;bw=1&amp;bgc=transparent&amp;m=20&amp;it=true&amp;t=(default)&amp;tc=333333&amp;ts=15&amp;tb=transparent&amp;il=true&amp;lc=0000FF&amp;ls=14&amp;lb=false&amp;id=true&amp;dc=333333&amp;ds=14&amp;idt=true&amp;dtc=284F2D&amp;dts=12">
                        </iframe>
                </div> -->
    </main>
</div>
</body>
</html>
<?php include "../includes/footer.php"; ?>