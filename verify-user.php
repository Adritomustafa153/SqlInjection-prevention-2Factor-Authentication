<!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>2 step Verification</title>
            <style type="text/css">
        input[type=text],input[type=password] {
            padding: 16px;
            margin: 8px;
            border: 1px solid #f1f1f1;
            letter-spacing: 1px;
            border-radius: 3px;
            width: 240px;
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
            <form action="verify.php" method="POST">
               <center> <h2 style="color: #30C77A;">Enter Verification Code</center></h2>
               <center> <input type="text" name="Code" id="Code" placeholder="Enter 6-digit verification code"></center>
                <br />

                <center><input type="submit" name="login" value="Submit" /></center>

            </form>
        </body>
</html>
