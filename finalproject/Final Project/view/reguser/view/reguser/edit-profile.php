<?php
session_start();
require_once('../../model/model.php');
$id = $_REQUEST['id'];
$user = getUserById($id);
if (isset($_COOKIE['flag'])) {
    // require("../../model/db.php");
    // $Username = $_SESSION['username'];
    // $query = "SELECT * FROM users where user_username='Saidul_Khan'";
    // $query = "SELECT * FROM users where username='Saidul_Khan'";
    // $query_run = mysqli_query($connection, $query);

    // check if profile exists
    // if (mysqli_num_rows($query_run) > 0) {
    //     $row = mysqli_fetch_assoc($query_run);
    // }
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
        <title>Edit Profile</title>

        <style>
            .form-input {
                width: 350px;
                height: 30px;
                border: 1px solid cyan;
                border-radius: 10px;
                /* font-size: large; */
                /* background-color: rgb(255, 255, 255); */
                background-color: transparent;
                display: inline-block;
                /* color: black; */
                color: white;
                margin-left: 15px;
                padding: 5px;
            }

            .form-input:focus {
                background-image: linear-gradient(144deg, #AF40FF, #5B42F3 50%, #00DDEB);
                outline: none;
                font-size: large;
            }

            .field {
                margin-top: 20px;
                margin-bottom: 20px;
                margin-left: 20px;
                margin-right: 20px;
            }
        </style>

    </head>

    <body>
        <header>
            <?php include './header.php'; ?>
        </header>

        <main>
            <form method="post" action="../../control/updateUserInfo.php" enctype="multipart/form-data">
                <div class="profile">

                    <center>
                        <h1 style="color:cyan; margin-bottom:15px;">[ Edit PROFILE ]</h1>
                    </center>
                    <center>








                        <?php
                        // $Error = "";
                        // $ImageError = $UploadConfirmation = "";
                        // if (isset($_POST["edit-submit"])) {
                        //     $target_dir = "../assets/";
                        //     $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
                        //     // $uploadOk = 1;
                        //     $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
                        //     $filepath = "";

                        //     $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);




                        //     // File Upload Validation
                        //     if ($_FILES['fileToUpload']['name'] != "") {

                        //         if ($check !== false) { // Checking if the file is image or not
                        //             $uploaded = 1;
                        //         } else {
                        //             $ImageError = "File is not an image.";
                        //             $uploaded = 0;
                        //         }

                        //         if (file_exists($target_file)) { // Checking if the file is already uploaded or not
                        //             $ImageError = "Sorry, file already exists.";
                        //             $uploaded = 0;
                        //         }

                        //         if ($_FILES["fileToUpload"]["size"] > 40000000000) { // Checking if thee file size is too large or not
                        //             $ImageError = "Sorry, your file is too large.";
                        //             $uploaded = 0;
                        //         }

                        //         if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg") { // Checking if the file is jpg/jpeg/png
                        //             $ImageError = "Sorry, only JPG, JPEG & PNG files are allowed.";
                        //             $uploaded = 0;
                        //         }

                        //         if ($uploaded == 0) { // Checking If the file is not uploaded
                        //             $ImageError = "Sorry, your file was not uploaded.";
                        //         } else {
                        //             if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) { // If the file is uploaded and moved to targeted file directory
                        //                 $UploadConfirmation = "File has been uploaded Successfully";
                        //                 $filepath = $target_dir . htmlspecialchars(basename($_FILES["fileToUpload"]["name"]));
                        //             } else {
                        //                 $ImageError = "Sorry, there was an error uploading your file.";
                        //             }
                        //         }
                        //     } else {
                        //         $ImageError = "No Image was selected";
                        //     }
                        // }
                        ?>












                        <?php
                        $msg = "";

                        // If upload button is clicked ...
                        if (isset($_POST['upload'])) {

                            $target_dir = "../assets/";
                            $filename = $_FILES["fileToUpload"]["name"];
                            $target_file = $target_dir . basename($filename);
                            $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
                            $filepath = "";



                            $tempname = $_FILES["fileToUpload"]["tmp_name"];
                            $folder = "../assets/" . $filename;

                            $db = mysqli_connect("localhost", "root", "root", "just-travel");

                            // Get all the submitted data from the form
                            $Username = $_SESSION['username'];
                            $sql = "UPDATE users SET photo='$target_file' WHERE username = '$Username'";
                            // $sql = "INSERT INTO users (photo) VALUES ('$target_file')";

                            // Execute query
                            mysqli_query($db, $sql);

                            // Now let's move the uploaded image into the folder: image
                            if (move_uploaded_file($tempname, $folder)) {
                                $msg = "Image uploaded successfully";
                            } else {
                                $msg = "Failed to upload image";
                            }
                        }
                        // $Username = $_SESSION['username'];
                        // $result = mysqli_query($db, "SELECT * FROM users WHERE username = '$Username'");
                        // while ($data = mysqli_fetch_array($result)) {

                        ?>
                        <!-- <img src="<?php
                                        // echo $data['photo']; 
                                        ?>" width="45%" height="auto" style="border-radius: 50%"> -->
                        <!-- <img src=" -->
                        <?
                        // = $user['photo']; 
                        ?>
                        <!-- " width="45%" height="auto" style="border-radius: 50%"> -->

                        <?php
                        // }
                        ?>










                        <?php
                        if (empty($user['photo'])) {
                        ?>
                            <img src="./images/user.png" width="45%">
                        <?php
                        } else {
                        ?>
                            <img src="./images/user.png" id="blah" alt="" width="45%" height="auto" style="border: 2px solid blueviolet; border-radius:50%;">
                        <?php
                        }
                        ?>
                        <br>


                        <br><br>


                        <!-- <input type="file" name="dataFile" id="fileChooser" onchange="return ValidateFileUpload()"> -->
                        <input type="file" name="fileToUpload" id="fileToUpload" onchange="validateImageAndSize()">
                        <button type="submit" name="upload">UPLOAD</button>
                        <?php
                        // if ($ImageError != "") {
                        //     echo $ImageError;
                        // }
                        ?>

                        <!-- <br><br><span style="color:red"> -->
                        <?php
                        // if ($ImageError != "") {
                        //     echo $ImageError;
                        // }

                        ?>
                        </span>
                        <!-- <input type="button" value="Upload Profile Picture"> -->
                        <br>
                        <h1>
                            <?php
                            // echo $row['user_fname']; 
                            ?>
                        </h1>
                    </center>
                    <br>

                    <p class="field"><strong><i style="color:cyan" class="far fa-user-circle"></i>&nbsp;&nbsp;&nbsp;Username:</strong>&nbsp;<input class="form-input" type="text" name="username" id="user" onkeyup="validateUsername(document.getElementById('user').value)" value="<?= $user['username'] ?>" disabled></p>
                    <p id="usernameOutput"></p>
                    <!-- <br> -->
                    <p class="field"><strong><i style="color:cyan" class="fas fa-user"></i>&nbsp;&nbsp;&nbsp;Name:</strong>&nbsp;<input class="form-input" type="text" name="fname" id="fname" onkeyup="validateName(document.getElementById('fname').value)" value="<?= $user['fname']; ?>">
                    </p><span id="nameOutput"></span>
                    <!-- <br> -->
                    <p class="field"><strong><i style="color:cyan" class="fas fa-lock"></i>&nbsp;&nbsp;&nbsp;Password:</strong>&nbsp;<input type="text" class="form-input" name="password" id="pass" onkeyup="validatePassword(document.getElementById('pass').value)" value="<?= $user['password'] ?>">
                    <p id="passwordOutput"></p>
                    </p>
                    <!-- <br> -->
                    <p class="field"><strong><i style="color:cyan" class="fas fa-at"></i>&nbsp;&nbsp;&nbsp;Email:</strong>&nbsp;<input type="email" class="form-input" name="email" id="email" onkeyup="CheckEmail(document.getElementById('email').value)" value="<?= $user['email'] ?>">
                    <p id="emailOutput"></p>
                    </p>

                    <!-- <p><strong><i style="color:cyan" class="fas fa-venus-mars"></i>&nbsp;&nbsp;&nbsp;Gender:</strong>&nbsp;
                        <select name="gender" id="gender">
                            <option value="none" selected>Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </p> -->
                    <!-- <p><strong><i style="color:cyan" class="fas fa-birthday-cake"></i>&nbsp;&nbsp;&nbsp;Date of Birth:</strong>&nbsp;<input type="date" name="dob" id="dob" value="
                    <?php
                    // $user['dob'];
                    ?>">
                    </p> -->
                    <input type="hidden" name="id" value="<?= $user['id'] ?>">
                    <!-- <br> -->
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
                        <button class="profileButton" id="profileEditButton" name="edit-submit" role="button">Submit</button>
                        <!-- <fieldset style="width:35%; margin-top: 10px;">
            <a href="order-status.php" style="text-decoration:none; color:white"><i class="fas fa-shopping-cart"></i>&nbsp;See Order Status</a>
        </fieldset> -->
                        <!-- <button class="button-62" role="button">See Order Status</button> -->
                    </center>
                </div>
            </form>
        </main>






        <footer>
            <?php
            include './footer.php';
            ?>
        </footer>

        <script src="./js/header.js"></script>
        <script src="./js/validate.js"></script>


        <script>
            function validateImageAndSize() {
                var formData = new FormData();
                var file = document.getElementById("fileToUpload").files[0];
                formData.append("Filedata", file);

                var t = file.type.split('/').pop().toLowerCase();
                if (t != "jpeg" && t != "jpg" && t != "png") {
                    alert('Please select a valid image file');
                    document.getElementById("fileToUpload").value = '';
                    return false;
                }

                var fsize = (file.size / 1024 / 1024).toFixed(2);
                if (fsize > 2) {
                    alert('Max Upload size is 2MB only');
                    document.getElementById("fileToUpload").value = '';
                    return false;
                }
                return true;
            }
        </script>


    </body>

    </html>

<?php
} else {
    header('location: ../../../../control/login.php');
}
?>