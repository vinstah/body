<?php
class ServicesPage extends Page {

	private static $db = array(
	);
	private static $has_one = array(
	);
	private static $allowed_children = 'none';
	private static $can_be_root = false;	

}
class ServicesPage_Controller extends Page_Controller {

	public function grabStaff() {
		return SiteTree::get()->filter('ID', 54);
	}
	private static $allowed_actions = array (
	);
		
}