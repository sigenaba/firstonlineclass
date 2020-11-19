<?php
if (isset($_GET['name'])) {
    $name = $_GET['name'];
}
$result = $con->query("SELECT * FROM systemunitlist WHERE user like '%$name%' and status='CURRENTLY USE'") or die($con->error);
$coun = mysqli_num_rows($result);
?>
<div class="section-container">
    <div class="section-left">
        <div class="wrapper-result">
            <div id="result">
                <form action="computer_menu.php?source=currently_use" method="post">
                    <input type="text" value="<?php echo $name; ?>" accesskey="s">
                    <input id="result-clear" type="submit" value="CLEAR">
                </form>
            </div>
        </div>
        <table class="table-sortable" border=1 cellpadding=4 cellspacing=0>

            <thead>
                <tr>
                    <th>ID</th>
                    <th>Status</th>
                    <th>User</th>
                    <th>cpu</th>
                    <th>hdd</th>
                    <th>ram</th>
                    <th>mobo</th>
                    <th>operating system</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php if ($coun > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $a = $row['id'];
                        $b = $row['STATUS'];
                        $c = $row['user'];
                        $d = $row['cpu'];
                        $e = $row['hdd'];
                        $f = $row['ram'];
                        $g = $row['mobo'];
                        $h = $row['os'];
                        $deurl1 = "./computer_menu.php?source=soldupdate&cid=$a";
                        $deurl2 = "./currentlyview.php?&curuseid=$a";
                        echo "<tr>";
                        echo "<td>$a</td>";
                        echo "<td>$b</td>";
                        echo "<td>$c</td>";
                        echo "<td>$d</td>";
                        echo "<td>$e</td>";
                        echo "<td>$f</td>";
                        echo "<td>$g</td>";
                        echo "<td>$h</td>";
                        echo "<td><a href='$deurl1'><input type='button' name='userbtnsbmt' value='EDIT'></a></td>";
                        echo "<td><a href='$deurl2'><input type='button' name='userbtnsbmt' value='VIEW'></a></td>";
                        echo "</tr>";
                    }
                }
                if ($coun < 1) {
                    echo "<tr>";
                    echo "<td style='color: red;' colspan='9'>No data to be found yet!</td>";
                }
                ?>

            </tbody>
        </table>
        <br />
    </div>

</div>
</div>
<script src="../js/table.js"></script>
<?php include "../includes/footer.php"; ?>