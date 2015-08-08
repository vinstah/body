<?php
$val .= '<div id="TreeDropdownField_';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '"
     class="TreeDropdownField single';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
if ($scope->locally()->hasValue('ShowSearch', null, true)) { 
$val .= ' searchable';


}
$val .= '"
     data-url-tree="';

$val .= $scope->locally()->XML_val('Link', array('tree'), true);
$val .= '"
     data-title="';

$val .= $scope->locally()->XML_val('TitleURLEncoded', null, true);
$val .= '"
     ';

if ($scope->locally()->hasValue('Description', null, true)) { 
$val .= 'title="';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '"';


}
$val .= '
     ';

if ($scope->locally()->hasValue('Metadata', null, true)) { 
$val .= 'data-metadata="';

$val .= $scope->locally()->XML_val('Metadata', null, true);
$val .= '"';


}
$val .= '>
	<input id="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" type="hidden" name="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '" value="';

$val .= $scope->locally()->XML_val('Value', null, true);
$val .= '" />
</div>
';

