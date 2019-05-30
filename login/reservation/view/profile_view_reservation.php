<?php 
include 'header.php'; 
	echo $login_session;
$mysqli = mysqli_connect();

$call = mysqli_prepare($mysqli, 'CALL get_reservation($login_session,@reservation_id)');
echo "&&&&";
echo $call;
mysqli_stmt_bind_param($call, 'iii', $login_session);
mysqli_stmt_execute($call);

$select = mysqli_query($mysqli, 'SELECT @reservation_id');
$result = mysqli_fetch_assoc($select);
$reservation_id  = $result['@reservation_id'];

echo $reservation_id;
	
?>
<main>
    <form action="." method="post" >
    <fieldset>
        <legend>My Profile Overview</legend>
        
		
		<label>LoginID:</label>
        <input type="text" name="login_ID" disabled
               value="<?php echo htmlspecialchars($login_session);?>">
        <?php echo $fields->getField('login_ID')->getHTML(); ?><br>
		
        <label>Reservation_id:</label>
        <input type="text" name="reservation_id" disabled
               value="<?php echo htmlspecialchars($reservation_id);?>">
        <?php echo $reservation_id->getHTML(); ?><br>
		
    
    <fieldset>
        <legend>What do you want to do?</legend>

        <label>&nbsp;</label>
        <input type="submit" name="action" value="Edit My Profile">
        <input type="submit" name="action" value="Cancel" ><br>
    </fieldset>
    </form>
</main>
<?php echo "hello!"; ?>
<?php include 'footer.php'; ?>        