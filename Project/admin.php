<html>
    <head>
        <title>Admin</title>
    </head>
    <body>
        <h3>Admin Page</h3>
        <?php
        session_start();
        if ($_SESSION['role'] == "admin") {
         echo "Hello " . $_SESSION['idname'] . "<br>";
         echo "Your authorisation is: " . $_SESSION['role'];
        } else {
            header("Location: Login.php"); // go to login page
        }
        
        ?>
    </body>
</html>