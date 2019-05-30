<?php
require_once('model/fields.php');
require_once('model/validate.php');

$validate = new Validate();
$fields = $validate->getFields();
$fields->addField('cardnum');
$fields->addField('cvv');
$fields->addField('cardexpiry');

include ('view/view_card_details.php');

?>