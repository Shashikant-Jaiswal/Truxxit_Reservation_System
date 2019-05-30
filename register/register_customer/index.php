<?php
require_once('model/fields.php');
require_once('model/validate.php');

$validate = new Validate();
$fields = $validate->getFields();
$fields->addField('login_ID');
$fields->addField('email', 'Must be a valid email address.');
$fields->addField('password', 'Must be at least 6 characters.');
$fields->addField('verify');
$fields->addField('membership');
$fields->addField('first_name');
$fields->addField('last_name');
$fields->addField('address');
$fields->addField('city');
$fields->addField('state', 'Use 2 character abbreviation.');
$fields->addField('zip', 'Use 5 or 9 digit ZIP code.');
$fields->addField('sex');
$fields->addField('DOB', 'in format YYYY-MM-DD');
$fields->addField('card_cvv');
$fields->addField('card_number', 'Enter number with or without dashes.');
$fields->addField('exp_date', 'Use mm/yyyy format.');

$action = filter_input(INPUT_POST, 'action');
echo $action;

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
        echo "hello1";
        include 'view/register.php';
		echo "hello2";
        break;
    case 'register':
        // Copy form values to local variables
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
        $card_cvv = filter_input(INPUT_POST, 'card_cvv');
        $cardNumber = filter_input(INPUT_POST, 'card_number');
        $expDate = filter_input(INPUT_POST, 'exp_date');

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
        $validate->text('card_cvv', $card_cvv);
        $validate->text('card_number', $cardNumber);
        $validate->expDate('exp_date', $expDate);

        // Load appropriate view based on hasErrors
		echo $fields->hasErrors();
		echo "-------";
        if ($fields->hasErrors()) {
            include 'view/register.php';
        } else {
            include 'view/success.php';
        }
        break;
}
?>