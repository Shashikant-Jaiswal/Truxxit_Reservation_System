<html>
   
   <head>
      <title>Login Page</title>
      
      <style type = "text/css">
         body {
            font-family:Arial, Helvetica, sans-serif;
            font-size:14px;
         }
         label {
            font-weight:bold;
            width:100px;
            font-size:14px;
         }
         .box {
            border:#666666 solid 1px;
         }
      </style>
      
   </head>
   
   <body bgcolor = "#FFFFFF">
	
      <div align = "center">
         <div style = "width:300px; border: solid 1px #333333; " align = "left">
            <div style = "background-color:#333333; color:#FFFFFF; padding:3px;"><b>Login</b></div>
				
            <div style = "margin:30px">
               
               <form action = "" method = "post">
                  <label>UserName: </label><input type = "text" name = "username" class = "box"/><br /><br />
                  <label>Password:  &nbsp;</label><input type = "password" name = "password" class = "box" /><br/><br />
                  <input type = "submit" value = " Submit "/><br />
               </form>
			   <?php
   include("database.php");
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($db,$_POST['username']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
      
      $sql = "SELECT sys_id FROM user WHERE login_id = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      //$active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
	  $error = "";
      if($count == 1) {
         session_start();
		 //session_register("myusername");
         $_SESSION['login_user'] = $myusername;
         
         header("location: welcome.php");
		 die();
      } else if ($count > 1) {
		 $error = "Your Login Name is not unique.";
		 echo "<div style = \"font-size:11px; color:#cc0000; margin-top:10px\">";
		 echo $error; 
		 echo "</div>";
	  } else {
         $error = "Your Login Name or Password is invalid";
		 echo "<div style = \"font-size:11px; color:#cc0000; margin-top:10px\">";
		 echo $error; 
		 echo "</div>";
      }
   }
?>
            </div>
				
         </div>
		 <br>
		<h3><a href = "../register">Register New User</a></h3>
      </div>

   </body>
</html>