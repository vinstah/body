<?php
class VideosPage extends Page {

	private static $db = array(
		'VideosLeftColumn' => 'HTMLText',
		'VideosRightColumn' => 'HTMLText'
	);
	private static $has_one = array(
	);
	public function getCMSFields() {
        $fields = parent::getCMSFields();

   			$fields->addFieldToTab('Root.VideosLeftColumn', new HtmlEditorField('VideosLeftColumn', 'Videos Left Column'));
         	$fields->addFieldToTab('Root.VideosRightColumn', new HtmlEditorField('VideosRightColumn', 'Videos Right Column'));

        return $fields;
       }

}
class VideosPage_Controller extends Page_Controller {

	private static $allowed_actions = array (
	);
	
}