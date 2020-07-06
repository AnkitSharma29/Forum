<?php
$showError = "false";
    // echo "hello";
if($_SERVER["REQUEST_METHOD"] == "POST"){
     include '_dbconnect.php';
     $user_email=$_POST['signupEmail'];
     $pass=$_POST['signupPassword'];
     $cpass=$_POST['signupcPassword'];

    //check whether this email exits
    $existSql = "SELECT * FROM `users` WHERE user_email='$user_email'";
    $result = mysqli_query($con,$existSql);
    $numRows = mysqli_num_rows($result);
    if($numRows>0){
            $showError = "Email already in use.";
    }else{
        if($pass == $cpass){
           
            $hash = password_hash($pass, PASSWORD_DEFAULT);
            $cpass = password_hash($cpass, PASSWORD_DEFAULT);
            $sql= "INSERT INTO `users` (`user_email`, `user_pass`, `timestamp`) 
            VALUES ('$user_email', '$hash', current_timestamp())";
            $result = mysqli_query($con,$sql);
            if($result){
                $showAlert=true;
                session_start();
                $_SESSION['loggedin'] = true;
                $_SESSION['sno'] = $row['sno'];
                $_SESSION['useremail'] =$user_email;
                header("Location:/forum/index.php?signupsuccess=true");
                exit();
            }
        }else{
           
            $showError = "Password do not match.";
           
        }
    }
    header("Location:/forum/index.php?signupsucess=false&error=$showError");
}


?>