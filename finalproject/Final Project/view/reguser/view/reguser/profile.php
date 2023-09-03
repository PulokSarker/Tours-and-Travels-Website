<?php
session_start();


// include('../../model/model.php');
if (isset($_COOKIE['flag'])) {
    include("../../model/db.php");
    $Username = $_SESSION['username'];

    // $query = "SELECT * FROM users where user_username='Saidul_Khan'";

    // $ID = $_SESSION["NID"];
    $query = "SELECT * FROM users WHERE username='$Username'";
    $query_run = mysqli_query($connection, $query);



    // check if profile exists
    if (mysqli_num_rows($query_run) > 0) {
        $row = mysqli_fetch_assoc($query_run);
    }

?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="./favicon.png" type="image/x-icon">
        <link rel="stylesheet" href="./styles/header.css">
        <link rel="stylesheet" href="./styles/banner.css">
        <link rel="stylesheet" href="./styles/footer.css">
        <link rel="stylesheet" href="./styles/text-animation.css">
        <link rel="stylesheet" href="./styles/profile.css">
        <title>Profile</title>

    </head>

    <body>

        <?php include './header.php'; ?>


        <main>

            <div class="profile">

                <center>
                    <h1 style="color:cyan; margin-bottom:15px;">[ PROFILE ]</h1>
                </center>
                <center>
                    <?php if (empty($row['photo'])) { ?>
                        <img src="./images/user.png" width="45%">
                    <?php } else { ?>
                        <img src="<?php echo $row['photo']; ?>" alt="" width="45%" height="auto" style="border: 2px solid blueviolet; border-radius:50%;">
                    <?php } ?>


                    <br>
                    <h1>
                        <?php
                        echo $row['fname'];
                        ?>
                    </h1>
                </center>
                <br>
                <br>
                <!-- <p><strong><i style="color:cyan" class="fas fa-user"></i>&nbsp;&nbsp;&nbsp;Name:</strong>&nbsp;
                    <?php
                    // echo $row['fname'];
                    ?></p> -->
                <p><strong><i style="color:cyan" class="fas fa-users"></i>&nbsp;&nbsp;&nbsp;Role:</strong>&nbsp;<?php echo $row['role']; ?></p>
                <p><strong><i style="color:cyan" class="far fa-user-circle"></i>&nbsp;&nbsp;&nbsp;Username:</strong>&nbsp;<?php echo $row['username']; ?></p>
                <p><strong><i style="color:cyan" class="fas fa-lock"></i>&nbsp;&nbsp;&nbsp;Password:</strong>&nbsp;<?php echo $row['password']; ?>
                <p><strong><i style="color:cyan" class="fas fa-at"></i>&nbsp;&nbsp;&nbsp;Email:</strong>&nbsp;<?php echo $row['email']; ?>
                </p>

                <!-- <p><strong><i style="color:cyan" class="fas fa-venus-mars"></i>&nbsp;&nbsp;&nbsp;Gender:</strong>&nbsp;
                <?php
                // echo $row['gender'] 
                ?>
                </p> -->
                <!-- <p><strong><i style="color:cyan" class="fas fa-birthday-cake"></i>&nbsp;&nbsp;&nbsp;Date of Birth:</strong>&nbsp;
                <?php
                // echo $row['dob'] 
                ?>
                </p> -->





                <!-- <p><strong><i class="fas fa-venus-mars"></i>&nbsp;&nbsp;&nbsp;Gender:</strong>&nbsp;<?php
                                                                                                            // echo $row['user_gender']; 
                                                                                                            ?>
                </p> -->
                <!-- <br> -->
                <!-- <p><strong><i class="fas fa-baby"></i>&nbsp;&nbsp;&nbsp;Date of
                        Birth:</strong>&nbsp;<?php
                                                // echo $row['user_dob']; 
                                                ?></p> -->
                <!-- <br> -->
                <!-- <p><strong><i class="fas fa-house-user"></i>&nbsp;&nbsp;&nbsp;Address:</strong>&nbsp;383/1 Free School Street, Dhanmondi, Dhaka-1205</p> -->
                <!-- <br> -->
                <center>
                    <!-- <fieldset style="width:120px;">
                        <a href="edit-profile.php" style="text-decoration:none; color:white"><i class="far fa-edit"></i>&nbsp;Edit Profile</a>
                    </fieldset> -->
                    <a href="edit-profile.php?id=<?php echo $row['id']; ?>"> <button class="profileButton" role="button">Edit Profile</button> </a>

                    <!-- <fieldset style="width:35%; margin-top: 10px;">
                        <a href="order-status.php" style="text-decoration:none; color:white"><i class="fas fa-shopping-cart"></i>&nbsp;See Order Status</a>
                    </fieldset> -->
                    <a href="./order-status.php"><button class="profileButton" role="button">See Order Status</button></a>
                </center>
            </div>
        </main>

        <footer>
            <?php
            include './footer.php';
            ?>
        </footer>

        <script src="./js/header.js"></script>

    </body>

    </html>

<?php
} else {
    header('location: ../../../../control/login.php');
}
?>