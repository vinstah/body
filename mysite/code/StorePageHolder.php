<?php
class StorePageHolder extends Page {
	private static $db = array(
	);
	private static $has_one = array(
	);
	private static $allowed_children = array(
		'StorePage'
	);
}
class StorePageHolder_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);	
}