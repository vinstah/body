<?php
$val .= '<div id="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '" class="field';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
$val .= '">
	';

$val .= $scope->locally()->XML_val('Field', null, true);
$val .= '
	<label class="right" for="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</label>
	';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= '<span class="message ';

$val .= $scope->locally()->XML_val('MessageType', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Message', null, true);
$val .= '</span>';


}
$val .= '
	';

if ($scope->locally()->hasValue('Description', null, true)) { 
$val .= '<span class="description">';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '</span>';


}
$val .= '
</div>
';

