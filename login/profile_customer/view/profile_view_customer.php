<?php 
include 'header.php'; 
	
	$sql = "SELECT * FROM user inner join customer on user.sys_id=customer.cust_id where user.login_id='$login_session'";
    $result = mysqli_query($db,$sql); // see if user is a customer...
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    $count = mysqli_num_rows($result);
	
?>
<main>
    <form action="." method="post" >
    <fieldset>
        <legend>My Profile Overview</legend>
        
		
		<label>LoginID:</label>
        <input type="text" name="login_ID" disabled
               value="<?php echo htmlspecialchars($login_session);?>">
        <?php echo $fields->getField('login_ID')->getHTML(); ?><br>
		
        <label>Email:</label>
        <input type="text" name="email" disabled
               value="<?php echo htmlspecialchars($row['email_id']);?>">
        <?php echo $fields->getField('email')->getHTML(); ?><br>
		
		<label>Sex:</label>
		<?php 
		if ($row['sex'] == "Female" || $row['sex'] == "female") {
			echo "<input type=\"radio\" name=\"sex\" checked disabled value=\"female\">Female";
			echo "<input type=\"radio\" name=\"sex\" disabled value=\"male\">Male";
		} else {
			echo "<input type=\"radio\" name=\"sex\" disabled value=\"female\">Female";
			echo "<input type=\"radio\" name=\"sex\" checked disabled value=\"male\">Male";
		}
		?>	
        <?php echo $fields->getField('sex')->getHTML(); ?><br>
						
		<label>DOB:</label>
        <input type="text" name="DOB" disabled
               value="<?php echo htmlspecialchars($row['dob']); ?>">
        <?php echo $fields->getField('DOB')->getHTML(); ?><br>
		
        <label>Password:</label>
        <input type="password" name="password" disabled
               value="<?php echo htmlspecialchars($row['password']);?>">
        <?php echo $fields->getField('password')->getHTML(); ?><br>

        <label>Membership Type:</label>
        <?php 
			if ($row['membership_type'] == "BRONZE") {
				echo "<input type=\"radio\" name=\"membership\" value=\"BRONZE\" checked disabled>BRONZE"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"SILVER\" disabled>SILVER"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"GOLD\" disabled>GOLD"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"PLATINUM\" disabled>PLATINUM"; 
			} 
			else if ($row['membership_type'] == "SILVER") {
				echo "<input type=\"radio\" name=\"membership\" value=\"BRONZE\" disabled>BRONZE"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"SILVER\" checked disabled>SILVER"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"GOLD\" disabled>GOLD"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"PLATINUM\" disabled>PLATINUM"; 
			} 
			else if ($row['membership_type'] == "GOLD") {
				echo "<input type=\"radio\" name=\"membership\" value=\"BRONZE\" disabled>BRONZE"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"SILVER\" disabled>SILVER"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"GOLD\" checked disabled>GOLD"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"PLATINUM\" disabled>PLATINUM"; 
			} else { // membership is PLATINUM
				echo "<input type=\"radio\" name=\"membership\" value=\"BRONZE\" disabled>BRONZE"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"SILVER\" disabled>SILVER"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"GOLD\" disabled>GOLD"; 
				echo "<input type=\"radio\" name=\"membership\" value=\"PLATINUM\" checked disabled>PLATINUM"; 
			} 
		?>		
		<?php echo $fields->getField('membership')->getHTML(); ?><br>
    </fieldset>
    <fieldset>
        <legend>Contact Information</legend>

        <label>First Name:</label>
        <input type="text" name="first_name" disabled
               value="<?php echo htmlspecialchars($row['first_name']);?>">
        <?php echo $fields->getField('first_name')->getHTML(); ?><br>

        <label>Last Name:</label>
        <input type="text" name="last_name" disabled
               value="<?php echo htmlspecialchars($row['last_name']);?>">
        <?php echo $fields->getField('last_name')->getHTML(); ?><br>

        <label>Address:</label>
        <input type="text" name="address" disabled
               value="<?php echo htmlspecialchars($row['street']);?>">
        <?php echo $fields->getField('address')->getHTML(); ?><br>

        <label>City:</label>
        <input type="text" name="city" disabled
               value="<?php echo htmlspecialchars($row['city']); ?>">
        <?php echo $fields->getField('city')->getHTML(); ?><br>

        <label>State:</label>
        <input type="text" name="state" maxlength="2" disabled
               value="<?php echo htmlspecialchars($row['state']); ?>">
        <?php echo $fields->getField('state')->getHTML(); ?><br>

        <label>ZIP Code:</label>
        <input type="text" name="zip" disabled
               value="<?php echo htmlspecialchars($row['zip']); ?>">
        <?php echo $fields->getField('zip')->getHTML(); ?><br>
		
    </fieldset>
    
    <fieldset>
        <legend>What do you want to do?</legend>

        <label>&nbsp;</label>
        <input type="submit" name="action" value="Edit My Profile">
        <input type="submit" name="action" value="Cancel" ><br>
    </fieldset>
    </form>
</main>
<?php include 'footer.php'; ?>        