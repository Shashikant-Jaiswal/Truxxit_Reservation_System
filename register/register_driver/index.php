<?php
require_once('model/fields.php');
require_once('model/validate.php');

$validate = new Validate();
$fields = $validate->getFields();
$fields->addField('login_ID');
$fields->addField('email', 'Must be a valid email address.');
$fields->addField('password', 'Must be at least 6 characters.');
$fields->addField('verify');
$fields->addField('first_name');
$fields->addField('last_name');
$fields->addField('address');
$fields->addField('city');
$fields->addField('state', 'Use 2 character abbreviation.');
$fields->addField('zip', 'Use 5 or 9 digit ZIP code.');
$fields->addField('sex');
$fields->addField('DOB', 'in format YYYY-MM-DD');
$fields->addField('license');
$fields->addField('ssn');


$action = filter_input(INPUT_POST, 'action');
if ($action === NULL) {
    $action = 'reset';
} else {
    $action = strtolower($action);
}

switch ($action) {
    case 'reset':
		$login_ID = '';
        $email = '';
        $password = '';
        $verify = '';
        $firstName = '';
        $lastName = '';
        $address = '';
        $city = '';
        $state = '';
        $zip = '';
        $sex = '';
		$DOB = '';
        $license = '';
        $ssn = '';

        
        include 'view/register.php';
        break;
    case 'register':
        // Copy form values to local variables
		$login_ID = trim(filter_input(INPUT_POST, 'login_ID'));
        $email = trim(filter_input(INPUT_POST, 'email'));
        $password = filter_input(INPUT_POST, 'password');
        $verify = filter_input(INPUT_POST, 'verify');
        $firstName = trim(filter_input(INPUT_POST, 'first_name'));
        $lastName = trim(filter_input(INPUT_POST, 'last_name'));
        $address = trim(filter_input(INPUT_POST, 'address'));
        $city = trim(filter_input(INPUT_POST, 'city'));
        $state = filter_input(INPUT_POST, 'state');
        $zip = filter_input(INPUT_POST, 'zip');
        $sex = filter_input(INPUT_POST, 'sex');
		$DOB = filter_input(INPUT_POST, 'DOB');
        $license = trim(filter_input(INPUT_POST, 'license'));
        $ssn = trim(filter_input(INPUT_POST, 'ssn'));
		

        // Validate form data
		$validate->text('login_ID', $login_ID);
        $validate->email('email', $email);
        $validate->password('password', $password);
        $validate->verify('verify', $password, $verify);
        $validate->text('first_name', $firstName);
        $validate->text('last_name', $lastName);
        $validate->text('address', $address);
        $validate->text('city', $city);
        $validate->state('state', $state);
        $validate->zip('zip', $zip);
        $validate->sex('sex', $sex);
		$validate->text('DOB', $DOB);
        $validate->text('license', $license);
        $validate->text('ssn', $ssn);

        // Load appropriate view based on hasErrors
        if ($fields->hasErrors()) {
            include 'view/register.php';
        } else {
            include 'view/success.php';
        }
        break;
}
?>