<?php
class StorePage extends Page {
	private static $db = array(
	);
	private static $has_one = array(
		'ProductRangeImage' => 'Image'
	);
	public function getCMSFields() {
        $fields = parent::getCMSFields();

	    $fields->addFieldToTab("Root.Main", $uploadField = new UploadField("ProductRangeImage", "Product Range Image"));
			$uploadField->setFolderName('Store');
			$uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif'));		
			
        return $fields;
				
	}
	private static $can_be_root = false;	
}
class StorePage_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);	
}