<?php
$val .= '<div id="heading-background">
	<div class="container">
		<div class="wrapper">
			<div id="heading">
				<h1>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h1>
			</div>
		</div>
	</div>
</div>
<div id="page-background">
	<div class="container">
		<div class="wrapper">
			<div id="page">
					<div id="dashboard-navigation">
						<ul>
							<li><a href="">Home</a></li>
							<li><a href="">Profile</a></li>
							<li class="nav-right"><a href="">Logout</a></li>
						</ul>
					</div>
					<div class="category-holder">
						<a href="" class="category">
							monkey
						</a>
					</div>
					<div class="category-holder">
						<a href="" class="category">
							sd
						</a>
					</div>
					<div class="category-holder">
						<a href="" class="category">
							fdf
						</a>
					</div>
					<div class="category-holder">
						<a href="" class="category">
							fgfg
						</a>
					</div>
					<div class="category-holder">
						<a href="" class="category">
							fdf
						</a>
					</div>
					<div class="category-holder">
						<a href="" class="category">
							fgfg
						</a>
					</div>
					';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
			</div>
		</div>
	</div>
</div>
';
