<?php 
include 'header.php'; 

//echo $login_session;
$sql = "select * from card_details where cust_id = (select cust_id from customer where cust_id =
(select sys_id from user where login_id = '$login_session'))";
    $result = mysqli_query($db,$sql); 
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    $count = mysqli_num_rows($result);
?>
<main>
    <form action="." method="post" >
    <fieldset>
        <legend>Payment Information</legend>
        		
        <label>Card Number:</label>
        <input type="text" name="cardnum" 
               value="<?php echo htmlspecialchars($row['card_no']);?>">
        <?php echo $fields->getField('cardnum')->getHTML(); ?><br>
		
		<label>CVV</label>
		<input type="text" name="cvv" 
               value="<?php echo htmlspecialchars($row['card_cvv']);?>">
        <?php echo $fields->getField('cvv')->getHTML(); ?><br>
				
		<label>Card Expiry</label>
		<input type="text" name="cardexpiry" 
               value="<?php echo htmlspecialchars($row['card_expiry']);?>">
        <?php echo $fields->getField('cardexpiry')->getHTML(); ?><br>

        		
    </fieldset>
    
    <fieldset>
        <legend>What do you want to do?</legend>

        <label>&nbsp;</label>
        <input type="submit" href = "add_card" name="action" value="Add Card">
        <input type="submit" name="action" value="Cancel" ><br>
    </fieldset>
    </form>
</main>
<?php include 'footer.php'; ?>        