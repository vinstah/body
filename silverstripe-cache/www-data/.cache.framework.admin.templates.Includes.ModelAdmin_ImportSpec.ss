<?php
$val .= '<div class="importSpec" id="SpecFor';

$val .= $scope->locally()->XML_val('ModelName', null, true);
$val .= '">
	<a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#SpecDetailsFor';

$val .= $scope->locally()->XML_val('ModelName', null, true);
$val .= '" class="detailsLink">';

$val .= sprintf(_t('ModelAdmin_ImportSpec_ss.IMPORTSPECLINK','Show Specification for %s'),$scope->locally()->XML_val('ModelName', null, true));
$val .= '</a>
	<div class="details" id="SpecDetailsFor';

$val .= $scope->locally()->XML_val('ModelName', null, true);
$val .= '">
	<h4>';

$val .= sprintf(_t('ModelAdmin_ImportSpec_ss.IMPORTSPECTITLE','Specification for %s'),$scope->locally()->XML_val('ModelName', null, true));
$val .= '</h4>
		<h5>';

$val .= _t('ModelAdmin_ImportSpec_ss.IMPORTSPECFIELDS','Database columns');
$val .= '</h5>
		';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<dl>
			<dt><em>';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '</em></dt>
			<dd>';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '</dd>
		</dl>
		';


}; $scope->popScope(); 
$val .= '

		<h5>';

$val .= _t('ModelAdmin_ImportSpec_ss.IMPORTSPECRELATIONS','Relations');
$val .= '</h5>
		';

$scope->locally()->obj('Relations', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<dl>
			<dt><em>';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '</em></dt>
			<dd>';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '</dd>
		</dl>
		';


}; $scope->popScope(); 
$val .= '
	</div>
</div>
';

