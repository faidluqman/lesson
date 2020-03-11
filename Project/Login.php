<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h3>Login Page</h3>
        
        <?php
        session_start();
        if(isset($_POST["login"])) {
            //checks if form is submitted
            
            //button has been clicked
            include("include_secure/dbconnectproject.inc");
            include("includes/dbcheck_connection.inc");
            
            //escape to ensure no sql injection occuring 
            $idname = $conn->real_escape_string($_POST['idname']);
            $password = $conn->real_escape_string($_POST['password']);
            
            //creating the sql command
            //single quote used because variable is char
            $sql = "SELECT * FROM project_user WHERE idname = '$idname'";
            
            if($result = $conn->query($sql)) {
                // no error
                if(($result->num_rows) > 0) {
                    // id name found 
                    $row = $result->fetch_array();
                    $role = $row['role'];
                    $passwordhash = $row['password'];
                    if (password_verify($password, $passwordhash)) {
                        // passowrd correct
                        $_SESSION['idname'] = $idname;
                        $_SESSION['role'] = $role;
                        if ($role == "user") {
                            $filename = "emailexample.php";
                        } else if ($role == "admin") {
                            $filename = "admin.php";
                        } else {
                            $filename = "";
                        }
                        // open a different page
                        header("Location: $filename");
                        
                    }
                    else {
                        //wrong password
                        $message = "Wrong password";
                    }
                    
                }
                else {
                    //id name not found
                    $message = "Identity card/ Passport number not found";
                }
                
                } 
            
            else {
                    $message = "Error";
                }
                
            $sql = "INSERT INTO project_login
            (idname, password, role) VALUES
            ('$idname', '$passwordhash', 'user')";
        }
        
        ?>
        
        <form method="post">
            <p>Enter Identity card/ Passport number:
            <input type="text" name="idname" required /></p>
            <p>Enter Password:
            <input type="password" name="password" required /></p>
            <p>
            <input type="submit" name="login" value="Login" /></p>
        
        </form>
        
        <?php
        if(isset($_POST["login"])) {
            echo "$message<br>";
            include("includes/dbcloseproject_connection.inc");
        }
        
        ?>
    </body>
</html>