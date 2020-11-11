<?php include "../includes/header.php"; ?>
<?php include "../includes/navigation.php"; ?>

<main class="body">
    <span class="welcome">Welcome <?php echo $_SESSION['username'] . "!"; ?> </span>
    <h2 class="disposals">Accessories</h2>
    <br />
    <table>
        <thead>
            <tr>
                <th>Sequence</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Gross</th>
            </tr>
        </thead>
        <tr>
            <td>1</td>
            <td>Raul</td>
            <td>Silang</td>
            <td>2500</td>
        </tr>
    </table>
</main>
<?php include "../includes/footer.php"; ?>
</body>

</html>