<?php include 'header.php'; ?>
	 <table border="1">
	 <tr>
		<th>Reservation_ID</th>
		<th>Customer_Name</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Driver_Name</th>
		<th>Truck_Type</th>
		<th>Plan_Name</th>
		<th>Operation</th>
	 </tr>
	 
	   <?php

define('DB_SERVER1', 'localhost');
   define('DB_USERNAME1', 'root');
   define('DB_PASSWORD1', 'root');
   define('DB_DATABASE1', 'truxxit');

$mysqli = new mysqli(DB_SERVER1,DB_USERNAME1,DB_PASSWORD1,DB_DATABASE1);
$res = $mysqli->multi_query("select reservation_id,Customer_Name,source,destination,Driver_Name, truck_type,plan_name from reservation_details where login_id = '$login_session' ");
$reservation_id_ = 0;
	   
		if( $res ) { 
  $results = 0; 
  

  do { 
    if ($result = $mysqli->store_result()) { 
      printf( "<br/>", ++$results );
	
   		
	while( $row = $result->fetch_row() ) {
		echo "<form>";
		echo "<tr>";
				
        foreach( $row as $cell1 )
		{	
		echo "<td>";
		//echo $row['Customer_Name'];
				
		echo $cell1, "&nbsp;";
		echo "<br/>";
		
		
	} 
	echo '<td><a href="view/delete.php?id='. $row['0']. '">Delete</a></td>';
	} 
	
	echo "</td>";
	//echo "$x";
	
	//echo "<td><input type='hidden' name='id' value=$row['0'] /><td>";
			echo "</tr>";
			echo $row['0'];
      $result->close(); 
      if( $mysqli->more_results() ) { echo "<br/>";}
		else break;
	  
	  //{ if ($mysqli->more_results()) break; echo "***<br/>"; echo $results;} 
	  
    } 
  } while( $mysqli->next_result() ); 
} 	
	        
?>

<br>
<a href="../welcome.php"><-Back to My Dashboard</a>
<br>
<?php include 'footer.php'; ?>