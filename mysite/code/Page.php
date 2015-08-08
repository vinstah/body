<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

}
class Page_Controller extends ContentController {

	private static $allowed_actions = array (
	);

	public function init() {

		parent::init();

		// Stop Silverstripe from loading it's own version of jQuery. 
     	Requirements::block(SAPPHIRE_DIR .'/thirdparty/jquery/jquery.js');

 		// Require the CDN version
        Requirements::javascript('//cdn.jsdelivr.net/jquery/1.7.2/jquery.min.js');

        // Fancybox
		Requirements::javascript('http://cdn.jsdelivr.net/fancybox/2.1.5/jquery.fancybox.pack.js');
		Requirements::css('http://cdn.jsdelivr.net/fancybox/2.1.5/jquery.fancybox.min.css');


	}

}