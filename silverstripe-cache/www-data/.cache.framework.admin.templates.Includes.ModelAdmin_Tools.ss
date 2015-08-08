<?php
$val .= '<div class="cms-content-tools west cms-panel cms-panel-layout" id="cms-content-tools-ModelAdmin" data-expandOnClick="true" data-layout-type="border">
	<div class="cms-panel-content center">
		';

if ($scope->locally()->hasValue('SearchForm', null, true)) { 
$val .= '
			<h3 class="cms-panel-header">';

$val .= _t('ModelAdmin_Tools_ss.FILTER','Filter');
$val .= '</h3>
			';

$val .= $scope->locally()->XML_val('SearchForm', null, true);
$val .= '
		';


}
$val .= '

		';

if ($scope->locally()->hasValue('ImportForm', null, true)) { 
$val .= '
			<h3 class="cms-panel-header">';

$val .= _t('ModelAdmin_Tools_ss.IMPORT','Import');
$val .= '</h3>
			';

$val .= $scope->locally()->XML_val('ImportForm', null, true);
$val .= '
		';


}
$val .= '
	</div>
	<div class="cms-panel-content-collapsed">
		<h3 class="cms-panel-header">';

$val .= _t('ModelAdmin_Tools_ss.FILTER','Filter');
$val .= '</h3>
	</div>
</div>
';

