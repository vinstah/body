<?php
$val .= '<div id="heading-background">
	<div class="container">
		<div class="wrapper">
			<div id="heading">
				<h1>';

$val .= $scope->locally()->XML_val('title', null, true);
$val .= '</h1>
			</div>
		</div>
	</div>
</div>
<div id="page-background">
	<div class="container">
		<div class="wrapper">
			<div id="page">			
				<div id="content">				
					';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
					';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '				
				</div>		
			</div>
		</div>
	</div>	
</div>';
