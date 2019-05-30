<?php 
define('DB_SERVER2', 'localhost');
   define('DB_USERNAME2', 'root');
   define('DB_PASSWORD2', 'root');
   define('DB_DATABASE2', 'truxxit');

$mysqli = new mysqli(DB_SERVER2,DB_USERNAME2,DB_PASSWORD2,DB_DATABASE2);

$id = $_GET['id'];

$queryCategory = 'Call delete_reservation('.$id.')' ;
$statement1 = $mysqli->prepare($queryCategory);

$statement1->execute();
?>

<?php echo "<h2>Deleted Reservation Successfully!</h2>"; ?>
<br>
<br>
<a href="../../reservation">Back to My Reservations</a>
<br>
<br>
<a href="../../welcome.php">Back to My Dashboard</a>
<br>
<hr>
<?php include 'footer.php'; ?>  







