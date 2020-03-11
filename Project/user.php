<html>
    <head>
        <title>User</title>
    </head>
    <body>
        <h3>User Page</h3>
        
        <?php
        session_start();
        if ($_SESSION['role'] == "user") {
         echo "Hello " . $_SESSION['idname'] . "<br>";
         echo "Your authorisation is: " . $_SESSION['role'];
        } else {
            header("Location: Login.php"); // go to login page
        }
        
        ?>
    </body>
</html>