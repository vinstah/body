<?php
class RegistrationTypes extends DataObject{
	private static $db = array(
		'UID'	=> 'Varchar(254)',
		'Title'	=> 'Varchar(254)',
		'Price' => 'Varchar(254)'

	);
}