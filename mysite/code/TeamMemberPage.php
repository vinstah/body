<?php
class TeamMemberPage extends Page {

	private static $can_be_root = false;
	private static $allowed_children = 'none';
	private static $db = array(
		'TagPersonalTraining' => 'Boolean',
		'TagMassage' => 'Boolean',
		'TagCrossFit' => 'Boolean',
		'TagSportSpecific' => 'Boolean',
		'TagTeamTraining' => 'Boolean',
		'TagBoxing' => 'Boolean',
		'TagCounselling' => 'Boolean',
		'TagMentoring' => 'Boolean'
	);
	private static $has_one = array(
		'TeamMemberImage' => 'Image'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab('Root.Tags', new CheckboxField('TagPersonalTraining', 'Personal Training'));
		$fields->addFieldToTab('Root.Tags', new CheckboxField('TagMassage', 'Massage'));
		$fields->addFieldToTab('Root.Tags', new CheckboxField('TagCrossFit', 'CrossFit'));
		$fields->addFieldToTab('Root.Tags', new CheckboxField('TagSportSpecific', 'Sport Specific'));
		$fields->addFieldToTab('Root.Tags', new CheckboxField('TagTeamTraining', 'Team Training'));
		$fields->addFieldToTab('Root.Tags', new CheckboxField('TagBoxing', 'Boxing'));
		$fields->addFieldToTab('Root.Tags', new CheckboxField('TagCounselling', 'Counselling'));
		$fields->addFieldToTab('Root.Tags', new CheckboxField('TagMentoring', 'Mentoring'));


		$fields->addFieldToTab("Root.Main", $uploadField = new UploadField("TeamMemberImage", "Team Member Image"));
			$uploadField->setFolderName('TeamMembers');
			$uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif'));

		return $fields;
	}

	
}
class TeamMemberPage_Controller extends Page_Controller {

	private static $allowed_actions = array (
	);
	
}