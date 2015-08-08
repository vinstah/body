<?php
class TestimonialsPage extends Page {

	private static $can_be_root = false;
	private static $allowed_children = 'none';
	private static $db = array(
	);
	private static $has_one = array(
		'TestimonialImage' => 'Image'
	);
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab("Root.Main", $uploadField = new UploadField("TestimonialImage", "Testimonial Image"));
			$uploadField->setFolderName('Testimonials');
			$uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif'));

		return $fields;
	}

	
}
class TestimonialsPage_Controller extends Page_Controller {

	private static $allowed_actions = array (
	);
	
}