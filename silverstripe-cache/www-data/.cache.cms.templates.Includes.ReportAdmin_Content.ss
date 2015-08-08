<?php
$val .= '<div id="reportadmin-cms-content" class="cms-content center cms-tabset ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content">

	<div class="cms-content-header north">
		';

$scope->locally()->obj('EditForm', null, true); $scope->pushScope();
$val .= '
			<div class="cms-content-header-info">
				';

$val .= SSViewer::execute_template('BackLink_Button', $scope->getItem(), array(), $scope);

$val .= '
				';

$scope->locally()->obj('Controller', null, true); $scope->pushScope();
$val .= '
					';

$val .= SSViewer::execute_template('CMSBreadcrumbs', $scope->getItem(), array(), $scope);

$val .= '
				';


; $scope->popScope(); 
$val .= '
			</div>
		';


; $scope->popScope(); 
$val .= '
	</div>

	<div class="cms-content-fields center ui-widget-content" data-layout-type="border">

		';

$val .= $scope->locally()->XML_val('EditForm', null, true);
$val .= '

	</div>

</div>';

