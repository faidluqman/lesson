<html>
    <head>
        <title>User Registration</title>
    </head>
    <body>
        <h1>User Registration</h1>
        <?php
        include("include_secure/dbconnectproject.inc");
        include("includes/dbcheck_connection.inc");
        
        $name = $conn->real_escape_string($_POST["name"]);
        $gender = $conn->real_escape_string($_POST["gender"]);
        $idname = $conn->real_escape_string($_POST["idname"]);
        $email = $conn->real_escape_string($_POST["email"]);
        $password = $conn->real_escape_string($_POST["password"]);
        $passwordhash = password_hash($password, PASSWORD_DEFAULT);
        
        $sql = "INSERT INTO project_user
        (name, gender, idname, email, password, role) VALUES
        ('$name', '$gender','$idname', '$email', '$passwordhash', 'user')";
        
        include("includes/dbclose_connection.inc");
        ?>
    </body>
</html>