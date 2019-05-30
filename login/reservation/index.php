<?php
require_once('model/fields.php');
require_once('model/validate.php');
include '../session.php';

$validate = new Validate();
$fields = $validate->getFields();
$fields->addField('login_ID');
$fields->addField('reservation_id');

$action = filter_input(INPUT_POST, 'action');
if ($action === NULL) {
    $action = 'display';
	echo ".";
	include 'view/success.php';
} else if ($action == "Cancel") {
	header("location: ../../login/welcome.php");
	die();
} else { // update profile 
	if ($_SESSION['user_type'] == 'customer') {
		header("location: edit");
		die();
	} else {
		echo ("not sure :("); 
	}
}
?>
