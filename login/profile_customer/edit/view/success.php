<?php include 'header.php'; 
require_once('../../database.php');

$user_query = 'Update User SET login_id="'.$login_ID.'", first_name= "'. $firstName. '", last_name="'.$lastName. '", email_id="' .$email.'", password= "' . $password. '", street = "'.$address. '", city = "'.$city.'", state = "'.$state.'", zip= "'.$zip.'", dob = "'.$DOB.'", sex = "'.$sex.'" WHERE sys_id='.$sys_id;

$customer_query = 'Update Customer set membership_type="'.$membership. '"where cust_id='.$sys_id;

$ps = $db->prepare($user_query);
if ( false===$ps ) {
  die('query() failed: ' . htmlspecialchars($db->error));
}

$ps->execute();

$ps2 = $db->prepare($customer_query);
if ( false===$ps2 ) {
  die('query() failed: ' . htmlspecialchars($db->error));
}
$ps2->execute();
?>
<main>
    <h2>Success</h2>
    <p>Updates successfully
       submitted!</p>
    <ul>
	    <li>Login ID: <?php echo htmlspecialchars($login_ID); ?></li>
        <li>Email: <?php echo htmlspecialchars($email); ?></li>
		<li>Password: <?php echo "******** <i>[hidden]</i>"; ?></li>
        <li>First Name: <?php echo htmlspecialchars($firstName); ?></li>
        <li>Last Name: <?php echo htmlspecialchars($lastName); ?></li>
        <li>Address: <?php echo htmlspecialchars($address); ?></li>
        <li>City: <?php echo htmlspecialchars($city); ?></li>
        <li>State: <?php echo htmlspecialchars($state); ?></li>
        <li>ZIP: <?php echo htmlspecialchars($zip); ?></li>
        <li>sex: <?php echo htmlspecialchars($sex); ?></li>
		<li>dob: <?php echo htmlspecialchars($DOB); ?></li>
        <li>Your CustomerID is: <?php echo htmlspecialchars($sys_id); ?></li>
    </ul>
	<a href="../../welcome.php"><strong><- Back to My Dashboard</strong></a>
	<br>
	<br>
</main>
<?php include 'footer.php'; ?>