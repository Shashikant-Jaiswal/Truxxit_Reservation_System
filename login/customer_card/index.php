<?php
require_once('model/fields.php');
require_once('model/validate.php');
include '../session.php';

$validate = new Validate();
$fields = $validate->getFields();
$fields->addField('cardnum');
$fields->addField('cvv');
$fields->addField('cardexpiry');

//include ('view/view_card_details.php');
$action = filter_input(INPUT_POST, 'action');

if ($action === NULL) {
    $action = 'display';
include 'view/view_card_details.php';}
else if($action =='Add Card')
	{
	header("location:/add_card/index.php");	
	}
else{
	header("location: ../welcome.php");	
}

?>