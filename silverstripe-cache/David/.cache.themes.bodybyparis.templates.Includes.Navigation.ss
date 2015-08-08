<?php
$val .= '<nav>
	<ul id="nav">
		';

$scope->locally()->obj('Menu', array('1'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<li class="';

$val .= $scope->locally()->XML_val('LinkingMode', null, true);
$val .= '"><a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('XML', null, true);
$val .= '">';

$val .= $scope->locally()->obj('MenuTitle', null, true)->XML_val('XML', null, true);
$val .= '</a></li>
		';


}; $scope->popScope(); 
$val .= '
	</ul>
</nav>
';

