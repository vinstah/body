<?php
if ($scope->locally()->hasValue('ToplevelController', null, true)) { 
$val .= '
	<span class="section-icon icon icon-16 icon-';

$val .= $scope->locally()->obj('ToplevelController', null, true)->obj('MenuCurrentItem', null, true)->obj('Code', null, true)->XML_val('LowerCase', null, true);
$val .= '"></span>
';


}else if ($scope->locally()->hasValue('Controller', null, true)) { 
$val .= '
	<span class="section-icon icon icon-16 icon-';

$val .= $scope->locally()->obj('Controller', null, true)->obj('MenuCurrentItem', null, true)->obj('Code', null, true)->XML_val('LowerCase', null, true);
$val .= '"></span>
';


}else { 
$val .= '
	<span class="section-icon icon icon-16 icon-';

$val .= $scope->locally()->obj('MenuCurrentItem', null, true)->obj('Code', null, true)->XML_val('LowerCase', null, true);
$val .= '"></span>
';


}
$val .= '
';

