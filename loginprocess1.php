<?php
   if($_SERVER["REQUEST_METHOD"] == "POST"){
    $email = $_POST['email'];
    $pass =  $_POST['pass'];
    include '_dbconnect.php';

    $sql = "SELECT * FROM `user` WHERE email = '$email' and password='$pass'";
    $result = mysqli_query($con,$sql);
    $num = mysqli_num_rows($result);

    if($num == 1){
        session_start();
        $_SESSION['email']=$email;
        header("Location:userhome.php");
        exit();
    }
    else{
        header("Location:login_before_injection_prevention.php");
        exit();
    }    
    
   }
   else{
    header("Location:login_before_injection_prevention.php");
   }
?>