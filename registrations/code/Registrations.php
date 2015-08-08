<?php 
class Registrations extends DataObject{
	private static $db = array(
		'PlanType'		=> 'Varchar(254)',
		'FirstName' 	=> 'Varchar(254)',
		'Surname' 		=> 'Varchar(254)',
		'Email'			=> 'Varchae(254)',
		'AddressOne' 	=> 'Varchar(254)',
		'AddressTwo' 	=> 'Varchar(254)',
		'Phone'			=>	'Varchar(254)'
	);
}