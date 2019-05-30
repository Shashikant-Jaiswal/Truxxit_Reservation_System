<?php
   include('session.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the top navigation bar */
.topnav {
    overflow: hidden;
    background-color: #333;
}

/* Style the topnav links */
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}



/* Style the footer */
.footer {
    background-color: #f1f1f1;
    padding: 10px;
}
</style>
</head>
<body background="4d218e133cff4a5cf59fd1351791dc39.jpg"  >

<div class="topnav">
<?php
	  $sql = "SELECT * FROM user inner join customer on user.sys_id=customer.cust_id where user.login_id='$login_session'";
	  
      $result = mysqli_query($db,$sql); // see if user is a customer...
      $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
      
      $count = mysqli_num_rows($result);
      
      if ($count == 1) 
	  { // user is a customer (not a driver)
		 $_SESSION['user_type'] = "customer";
		 echo "<a href = \"profile_customer/\">Manage My Account</a>";
		 //header("location: customer_profile.php");
		 echo "<a href = \"customer_card/\">Manage Payment</a>";
		 echo "<a href = \"reservation/\">View My Reservation</a>";
		 
		 
      } 
	  else {

		 // user is a driver 
		 $_SESSION['user_type'] = "driver";
		 
      }
	  
   
?>
<a href = "logout.php">Sign Out</a>
</div>
<div class="content">
  <h1>Truxxit</h1>
</div>


</body>
</html>
