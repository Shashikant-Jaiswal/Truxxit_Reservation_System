<?php
require_once('model/fields.php');
require_once('model/validate.php');
include '../../session.php';

$validate = new Validate();
$fields = $validate->getFields();
$fields->addField('sys_id');
$fields->addField('login_ID');
$fields->addField('email');
$fields->addField('password');
$fields->addField('verify');
$fields->addField('membership');
$fields->addField('first_name');
$fields->addField('last_name');
$fields->addField('address');
$fields->addField('city');
$fields->addField('state');
$fields->addField('zip');
$fields->addField('sex');
$fields->addField('DOB');

$action = filter_input(INPUT_POST, 'action');

if ($action === NULL) {
    $action = '.';
}

switch ($action) {
    case '.':
		$login_ID = '';
        $email = '';
        $password = '';
        $verify = '';
		$membership = '';
        $firstName = '';
        $lastName = '';
        $address = '';
        $city = '';
        $state = '';
        $zip = '';
        $sex = '';
		$DOB = '';
        $card_cvv = '';
        $cardNumber = '';
        $cardDigits = '';
        $expDate = '';
        include 'view/profile_edit_customer.php';
		break;
	case 'Cancel': 
		header ("location: ../../profile_customer/"); 
		break;
    case 'Save Changes!':
        // Copy form values to local variables
	if ($_SESSION['user_type'] == 'customer') {
		
		$sys_id = trim(filter_input(INPUT_POST, 'sys_id'));
		$login_ID = trim(filter_input(INPUT_POST, 'login_ID'));
        $email = trim(filter_input(INPUT_POST, 'email'));
        $password = filter_input(INPUT_POST, 'password');
        $verify = filter_input(INPUT_POST, 'verify');
		$membership = filter_input(INPUT_POST, 'membership');
        $firstName = trim(filter_input(INPUT_POST, 'first_name'));
        $lastName = trim(filter_input(INPUT_POST, 'last_name'));
        $address = trim(filter_input(INPUT_POST, 'address'));
        $city = trim(filter_input(INPUT_POST, 'city'));
        $state = filter_input(INPUT_POST, 'state');
        $zip = filter_input(INPUT_POST, 'zip');
        $sex = filter_input(INPUT_POST, 'sex');
		$DOB = filter_input(INPUT_POST, 'DOB');
        
        // Validate form data
		$validate->text('login_ID', $login_ID);
        $validate->email('email', $email);
        $validate->password('password', $password);
        $validate->verify('verify', $password, $verify);
		$validate->membership('membership', $membership);
        $validate->text('first_name', $firstName);
        $validate->text('last_name', $lastName);
        $validate->text('address', $address);
        $validate->text('city', $city);
        $validate->state('state', $state);
        $validate->zip('zip', $zip);
        $validate->sex('sex', $sex);
		$validate->text('DOB', $DOB);
        
        // Load appropriate view based on hasErrors
		if ($fields->hasErrors()) {
            include 'view/profile_edit_customer.php';
        } else {
            include 'view/success.php';
        }
	} else {
		echo ("...not sure :("); 
	}
	    break;
}

?>
