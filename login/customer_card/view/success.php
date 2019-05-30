<?php include 'header.php'; 
require_once('database.php');
$queryCategory = ' Call Create_Customer(:login_id,:first_name,:last_name,:email,:password,:address,:city,:state,:zip,:DOB,:sex,:membership,:cardno,:cardcvv,:cardexp) ';

$statement1 = $db->prepare($queryCategory);
$statement1->bindValue(':login_id', $login_ID);
$statement1->bindValue(':first_name', $firstName);
$statement1->bindValue(':last_name', $lastName);
$statement1->bindValue(':email', $email);
$statement1->bindValue(':password', $password);
$statement1->bindValue(':address', $address);
$statement1->bindValue(':city', $city);
$statement1->bindValue(':state', $state);
$statement1->bindValue(':zip', $zip);
$statement1->bindValue(':sex', $sex);
$statement1->bindValue(':DOB', $DOB);
$statement1->bindValue(':membership', $membership);
$statement1->bindValue(':cardno', $cardNumber);
$statement1->bindValue(':cardcvv', $card_cvv);
$statement1->bindValue(':cardexp', $expDate);
$statement1->execute();
$statement1->closeCursor();

$queryCategory1 = 'select max(sys_id) as sys_id from user';

$statement2 = $db->prepare($queryCategory1);
$statement2->execute();
$sys_id_temp = $statement2->fetch();
$sys_id = $sys_id_temp['sys_id'];
$statement2->closeCursor();


?>
<main>
    <h2>Success</h2>
    <p>The following registration information has been successfully
       submitted.</p>
    <ul>
	    <li>LogIn ID: <?php echo htmlspecialchars($login_ID); ?></li>
        <li>Email: <?php echo htmlspecialchars($email); ?></li>
		<li>Password: <?php echo htmlspecialchars($password); ?></li>
        <li>First Name: <?php echo htmlspecialchars($firstName); ?></li>
        <li>Last Name: <?php echo htmlspecialchars($lastName); ?></li>
        <li>Address: <?php echo htmlspecialchars($address); ?></li>
        <li>City: <?php echo htmlspecialchars($city); ?></li>
        <li>State: <?php echo htmlspecialchars($state); ?></li>
        <li>ZIP: <?php echo htmlspecialchars($zip); ?></li>
        <li>sex: <?php echo htmlspecialchars($sex); ?></li>
		<li>dob: <?php echo htmlspecialchars($DOB); ?></li>
        <li>Card CVV: <?php echo htmlspecialchars($card_cvv); ?></li>
        <li>Card Number: <?php echo htmlspecialchars($cardNumber); ?></li>
        <li>Expiration: <?php echo htmlspecialchars($expDate); ?></li>
        <li>Your CustomerID is: <?php echo htmlspecialchars($sys_id); ?></li>
    </ul>
	<a href="../../login">Login</a>
</main>
<?php include 'footer.php'; ?>