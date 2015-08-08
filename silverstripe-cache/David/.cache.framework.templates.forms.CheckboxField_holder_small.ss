<?php
$val .= $scope->locally()->XML_val('Field', null, true);
$val .= '

';

if ($scope->locally()->hasValue('Title', null, true)) { 
$val .= '
	<label class="checkboxfield-small" ';

if ($scope->locally()->hasValue('ID', null, true)) { 
$val .= 'for="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '"';


}
$val .= '>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</label>
';


}
$val .= '
';

