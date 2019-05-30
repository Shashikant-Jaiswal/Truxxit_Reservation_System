<?php
   include('database.php');
   session_start();
   
   $user_check = $_SESSION['login_user'];
   
   $ses_sql = mysqli_query($db,"select login_id, first_name from user where login_id = '$user_check' ");
   
   $row = mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);
   
   $login_session = $row['login_id'];
   $login_first_name = $row['first_name'];
   
   if(!isset($_SESSION['login_user'])){
      header("location:index.php");
   }
?>