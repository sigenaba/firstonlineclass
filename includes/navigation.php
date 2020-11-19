<input type="checkbox" id="menu_btn">
<label for="menu_btn">&#9776;</label>
<div class="loader-container">
    <div class="loader"></div>
</div>
<nav class="menu">
    <ul>
        <li id="logo"><a href="../index.php"> <img src="../images/sunx_logo.png" alt=""></a></li>
        <li><a href="./index.php"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
        <li><a href="#">Reports <i class="fas fa-arrow-alt-circle-down"></i></a>
            <ul>
                <?php
                if ($_SESSION['user_role'] == 'admin') : ?>
                    <li><a href="../administrator/pages/add_entry.php"><i class="fas fa-desktop"></i> Add/Input(admin)</a>
                    <?php endif; ?>

                    <li><a href="./disposals.php"><i class="fas fa-recycle"></i> Disposals Monitoring</a>
                    <li><a href="./accessories.php"><i class="fas fa-keyboard"></i> Accessories Monitoring</a>
                    <li><a href="./microsoft.php"><i class="fas fa-keyboard"></i> Microsoft Office</a>
                    <li><a href="./computer_menu.php"><i class="far fa-clipboard"></i> Computer Unit</a>
                    <li><a href="./gatepass.php"><i class="far fa-hand-lizard"></i> Gatepass Records</a>
                    <li><a href="./sold-accessories.php"><i class="fas fa-hand-holding-usd"></i> Sold Accessories</a>
            </ul>
        </li>
        <li><a href="#">Forms <i class="fas fa-arrow-alt-circle-down"></i></a>
            <ul class="submenu">
                <li><a href="./gatepass_form.php"><i class="far fa-hand-lizard"></i> Gatepass</a>
                <li><a href="./ot-form.php"><i class="fas fa-hourglass-half"></i> O.T Form</a>
                <li><a href="./pull-out.php"><i class="fas fa-sign-out-alt"></i> Pull-out/Outgo</a>
                <li><a href="./registration.php"><i class="fas fa-sign-out-alt"></i> Registration Form</a>
            </ul>
        </li>
        <li><a href="#"><i class="fas fa-cog"></i> Settings</a>
            <ul class="submenu">
                <li><a href="./profile.php"><i class="fas fa-user-tie"></i></i> Profile</a>
            </ul>
        </li>

        <li><a href="./contact.php"><i class="fas fa-mobile-alt"></i></i> Contact</a></li>
        <li><a href="./logout.php">Logout</a></li>
    </ul>
</nav>

<div class="clear"></div>