<?php include 'header.php'; ?>
<main>
    <form action="." method="post" >
    <fieldset>
        <legend>Enter Your Credentials</legend>
        
		
		<label>Login ID:</label>
        <input type="text" name="login_ID" 
               value="<?php echo htmlspecialchars($login_ID);?>">
        <?php echo $fields->getField('login_ID')->getHTML(); ?><br>

        <label>Password:</label>
        <input type="password" name="password" 
               value="<?php echo htmlspecialchars($password);?>">
        <?php echo $fields->getField('password')->getHTML(); ?><br>

        <input type="submit" name="action" value="Login"><br>
    </fieldset>
    </form>
</main>
<?php include 'footer.php'; ?>        