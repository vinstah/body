<?php
$val .= '<div id="top-bar-background">
	<div class="container">
		<div class="wrapper">
			<div id="top-bar">
				<div id="tagline">
					<h1><span style="color:#ccc;">Health and Fitness Consultants</span> in Lower Hutt, New Zealand</h1>
				</div>
				<div id="control-area">
					<a href="Security/login"><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/login.png">Login</a>
					<a href="cart"><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/cart.png">Cart (';

$val .= $scope->locally()->obj('Cart', null, true)->obj('Products', null, true)->XML_val('Count', null, true);
$val .= ')</a>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="header-background">
	<div class="container">
		<div class="wrapper">
			<div id="header">
				<div id="logo">					
					<a href="home" title="Go to the home page">
						<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/body-by-paris-logo.png" alt="Body by Paris" title="Health and Fitness">
					</a>
				</div>
				<div id="contact-info">
					<img id="call" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/call.png" alt="" title="">
					<a href="">
						<img id="email" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/email.png" alt="" title="">
					</a>
				</div>
				<div id="navbar">
					';

$val .= SSViewer::execute_template('Navigation', $scope->getItem(), array(), $scope);

$val .= '
				</div>
			</div>
		</div>
	</div>
</div>';

