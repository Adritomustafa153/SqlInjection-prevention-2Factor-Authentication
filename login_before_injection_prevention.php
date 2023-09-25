<!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Login Portal</title>
    <style type="text/css">
        
        input[type=text],input[type=password] {
            padding: 16px;
            margin: 8px;
            border: 1px solid #f1f1f1;
            letter-spacing: 1px;
            border-radius: 3px;
            width: 240px;
            text-align: center;
            align: center;
          
        }
        input[type=submit] {
        
            margin-left: 8px;
            width: 274px;
            border-radius: 3px;
            border: 1px solid #30C77A;
            background-color: #30C77A;
            padding: 16px;
            color: white;
            font-weight: 600;
            cursor: pointer;
            
        }
    </style>
        </head>
        <body>
            
<class name= loginbox>
            <form action="loginprocess1.php" method="POST">
                <h2 style="color: #30C77A;"><center>Enter email and password to login</center></h2>
                <center><input type="text" name="email" id="email" placeholder="Enter your email"></center><br />

                <center><input type="password" name="pass" id="pass" placeholder="Enter your password"></center><br />

                <center><input type="submit" name="login" value="LOGIN" /></center>
            </form>
        </body>
<class>        
</html>
