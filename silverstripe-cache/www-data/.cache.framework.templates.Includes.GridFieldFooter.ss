<?php
$val .= '<tr>
	<td class="bottom-all" colspan="';

$val .= $scope->locally()->XML_val('Colspan', null, true);
$val .= '">
		';

if ($scope->locally()->hasValue('ShowRecordCount', null, true)) { 
$val .= '
			<span class="pagination-records-number">
				';

$val .= $scope->locally()->XML_val('FirstShownRecord', null, true);
$val .= ' - 
				';

$val .= $scope->locally()->XML_val('LastShownRecord', null, true);
$val .= '
				';

$val .= _t('TableListField_PageControls_ss.OF','of', 'Example: View 1 of 2');
$val .= '
				';

$val .= $scope->locally()->XML_val('NumRecords', null, true);
$val .= '
			</span>
		';


}
$val .= '
		';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= '
		<div class="datagrid-footer-message">';

$val .= $scope->locally()->XML_val('Message', null, true);
$val .= '</div>
		';


}
$val .= '
	</td>
</tr>
';

