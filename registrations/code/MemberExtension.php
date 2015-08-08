<?php
class MemberExtension extends DataExtension{
	private static $db = array(
		'AddressOne' => 'Varchar(254)',
		'AddressTwo' => 'Varchar(254)',
		'Phone'		=>	'Varchar(254)'

	);
	public function updateMemberFormFields($fields) {
		$fields->push(TextField::create('AddressOne', 'Address line one'));
		$fields->push(TextField::create('AddressTwo', 'Address line two'));
		$fields->push(TextField::create('Phone', 'Contact phone number'));
		return $fields;
	}

	public function updateCMSFields(FieldList $fields){
		$fields->addFieldsToTab(
			'Root.Main',
			FieldList::create(
				TextField::create('AddressOne', 'Address line one'),
				TextField::create('AddressTwo', 'Address line two'),
				TextField::create('Phone', 'Contact phone number')
			),
			'LastVisited'
		);
		return $fields;
	}
	public function populateDefaults() {
		//parent::populateDefaults();
		
	}
}