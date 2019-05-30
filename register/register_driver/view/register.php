<?php include 'header.php'; ?>
<main>
    <form action="." method="post" >
    <fieldset>
        <legend>Account Information</legend>
        
		
		<label>LoginID:</label>
        <input type="text" name="login_ID" 
               value="<?php echo htmlspecialchars($login_ID);?>">
        <?php echo $fields->getField('login_ID')->getHTML(); ?><br>
		
        <label>E-Mail:</label>
        <input type="text" name="email" 
               value="<?php echo htmlspecialchars($email);?>">
        <?php echo $fields->getField('email')->getHTML(); ?><br>

        <label>Password:</label>
        <input type="password" name="password" 
               value="<?php echo htmlspecialchars($password);?>">
        <?php echo $fields->getField('password')->getHTML(); ?><br>

        <label>Verify Password:</label>
        <input type="password" name="verify" 
               value="<?php echo htmlspecialchars($verify);?>">
        <?php echo $fields->getField('verify')->getHTML(); ?><br>
		

    </fieldset>
    <fieldset>
        <legend>Contact Information</legend>

        <label>First Name:</label>
        <input type="text" name="first_name" 
               value="<?php echo htmlspecialchars($firstName);?>">
        <?php echo $fields->getField('first_name')->getHTML(); ?><br>

        <label>Last Name:</label>
        <input type="text" name="last_name" 
               value="<?php echo htmlspecialchars($lastName);?>">
        <?php echo $fields->getField('last_name')->getHTML(); ?><br>

        <label>Address:</label>
        <input type="text" name="address" 
               value="<?php echo htmlspecialchars($address);?>">
        <?php echo $fields->getField('address')->getHTML(); ?><br>

        <label>City:</label>
        <input type="text" name="city" 
               value="<?php echo htmlspecialchars($city); ?>">
        <?php echo $fields->getField('city')->getHTML(); ?><br>

        <label>State:</label>
        <input type="text" name="state" maxlength="2"
               value="<?php echo htmlspecialchars($state); ?>">
        <?php echo $fields->getField('state')->getHTML(); ?><br>

        <label>ZIP Code:</label>
        <input type="text" name="zip" 
               value="<?php echo htmlspecialchars($zip); ?>">
        <?php echo $fields->getField('zip')->getHTML(); ?><br>

        <label>Sex:</label>
        <input type="radio" name="sex" 
		<?php if (isset($gender) && $gender=="female") echo "checked";?> 
			value="female">Female
		<input type="radio" name="sex"
		<?php if (isset($gender) && $gender=="male") echo "checked";?>
			value="male">Male
		<?php echo $fields->getField('sex')->getHTML(); ?><br>
						
		<label>DOB:</label>
        <input type="text" name="DOB" 
               value="<?php echo htmlspecialchars($DOB); ?>">
        <?php echo $fields->getField('DOB')->getHTML(); ?><br>
    </fieldset>
    <fieldset>
        <legend>Background Check</legend>
		<label>License Number:</label>
        <input type="text" name="license" 
               value="<?php echo htmlspecialchars($license); ?>">
        <?php echo $fields->getField('license')->getHTML(); ?><br>
		<label>SSN:</label>
        <input type="text" name="ssn" 
               value="<?php echo htmlspecialchars($ssn); ?>">
        <?php echo $fields->getField('ssn')->getHTML(); ?><br>		
        
    </fieldset>
    <fieldset>
        <legend>Submit Registration</legend>

        <label>&nbsp;</label>
        <input type="submit" name="action" value="Register">
        <input type="submit" name="action" value="Reset" ><br>
    </fieldset>
    </form>
</main>
<?php include 'footer.php'; ?>        