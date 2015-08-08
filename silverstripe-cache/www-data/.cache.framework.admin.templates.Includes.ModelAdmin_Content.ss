<?php
$val .= '<div class="cms-content cms-tabset center ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content">

	<div class="cms-content-header north">
		<div class="cms-content-header-info">
			<h2>
				';

$val .= SSViewer::execute_template('CMSSectionIcon', $scope->getItem(), array(), $scope);

$val .= '
				';

if ($scope->locally()->hasValue('SectionTitle', null, true)) { 
$val .= '
					';

$val .= $scope->locally()->XML_val('SectionTitle', null, true);
$val .= '
				';


}else { 
$val .= '
					';

$val .= _t('ModelAdmin.Title','Data Models');
$val .= '
				';


}
$val .= '
			</h2>
		</div>

		<div class="cms-content-header-tabs cms-tabset-nav-primary ss-ui-tabs-nav">
			<ul>
			';

$scope->locally()->obj('ManagedModelTabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				<li class="tab-';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('LinkOrCurrent', null, true);
if ($scope->locally()->XML_val('LinkOrCurrent', null, true)=='current') { 
$val .= ' ui-tabs-active';


}
$val .= '">
					<a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" class="cms-panel-link" title="Form_EditForm">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</a>
				</li>
			';


}; $scope->popScope(); 
$val .= '
			</ul>
		</div>
	</div>

	<div class="cms-content-fields center ui-widget-content" data-layout-type="border">
		';

$val .= $scope->locally()->XML_val('Tools', null, true);
$val .= '
		';

$val .= $scope->locally()->XML_val('EditForm', null, true);
$val .= '
	</div>
	
</div>
';

