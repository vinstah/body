<?php
class HomePage extends Page {

	private static $db = array(
	);
	private static $has_one = array(
	);

}
class HomePage_Controller extends Page_Controller {

	private static $allowed_actions = array (
	);
	public function grabTestimonials() {
		return SiteTree::get()->filter('ID', 9);
	}
	
}