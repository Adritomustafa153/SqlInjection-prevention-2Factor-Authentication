<?php
  session_start();
  $email = $_SESSION['email'];
  if($email==null){
    header('Location:login_after_injection_prevention.php'); 
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
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
        input[type=button] {
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
    <form action="logout.php">
        <center><h2 style="color:#30C77A;">Welcome to Admin page</center> </h2>
        <br />
       <center> <input type="button"  value="User Log" onclick="log();" ></center>
        <script> function log(){
             location.assign('userlog.php');
        }</script>
        <br><br>
       <center> <input type="submit" name="login" value="Log Out" /></center>
    </form>
</body>
</html>