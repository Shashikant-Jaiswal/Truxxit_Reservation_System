<?php include 'header.php'; 
require_once('database.php');
$queryCategory = 'INSERT INTO user (login_id,first_name,last_name,email_id,password,street,city,state,zip,dob,sex) VALUES (:login_ID,:firstName,:lastName,:email,:password,:address,:city,:state,:zip, :DOB,:sex)';

$statement1 = $db->prepare($queryCategory);
$statement1->bindValue(':login_ID', $login_ID);
$statement1->bindValue(':firstName', $firstName);
$statement1->bindValue(':lastName', $lastName);
$statement1->bindValue(':email', $email);
$statement1->bindValue(':password', $password);
$statement1->bindValue(':address', $address);
$statement1->bindValue(':city', $city);
$statement1->bindValue(':state', $state);
$statement1->bindValue(':zip', $zip);
$statement1->bindValue(':sex', $sex);
$statement1->bindValue(':DOB', $DOB);
$statement1->execute();
$statement1->closeCursor();


$queryCategory1 = 'select max(sys_id) as sys_id from user';

$statement2 = $db->prepare($queryCategory1);
$statement2->execute();
$sys_id_temp = $statement2->fetch();
$sys_id = $sys_id_temp['sys_id'];
$statement2->closeCursor();

$queryCategory2 = 'INSERT INTO driver VALUES (:driver_ID,:ssn,:license)';

$statement3 = $db->prepare($queryCategory2);
$statement3->bindValue(':driver_ID', $sys_id);
$statement3->bindValue(':ssn', $ssn);
$statement3->bindValue(':license', $license);
$statement3->execute();
$statement3->closeCursor();



?>
<main>
    <h2>Success</h2>
    <p>The following registration information has been successfully
       submitted.</p>
    <ul>
	    <li>Login ID: <?php echo htmlspecialchars($login_ID); ?></li>
        <li>Email: <?php echo htmlspecialchars($email); ?></li>
		<li>Password: <?php echo htmlspecialchars($password); ?></li>
        <li>First Name: <?php echo htmlspecialchars($firstName); ?></li>
        <li>Last Name: <?php echo htmlspecialchars($lastName); ?></li>
        <li>Address: <?php echo htmlspecialchars($address); ?></li>
        <li>City: <?php echo htmlspecialchars($city); ?></li>
        <li>State: <?php echo htmlspecialchars($state); ?></li>
        <li>ZIP: <?php echo htmlspecialchars($zip); ?></li>
        <li>License: <?php echo htmlspecialchars($license); ?></li>
        <li>SSN: <?php echo htmlspecialchars($ssn); ?></li>
        <li>Your DriverID is: <?php echo htmlspecialchars($sys_id); ?></li>
		
    </ul>
	<a href="../../login">Login</a>
</main>
<?php include 'footer.php'; ?>