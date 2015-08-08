<?php
$val .= '<div id="slider">
	<div id="the-slider">
		';

$val .= $scope->locally()->XML_val('FlexSlider', array('1', '1400', '360'), true);
$val .= '
	</div>
</div>
<div id="page-background-home">
	<div class="container">	
		<div class="wrapper">
			<div id="intro-buttons">
				<a href="services" id="home-button-one">
					<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/services-icon.png">
					<h2>Services</h2>
					<p>What we can do for you</p>
				</a>
				<a href="store" id="home-button-two">
					<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/merchandise-icon.png">
					<h2>Merchandise</h2>
					<p>Body by Paris clothing</p>
				</a>
				<a href="schedule" id="home-button-three">
					<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/events-icon.png">
					<h2>Events</h2>
					<p>Whats going on</p>
				</a>
			</div>
			<div id="home-intro-holder">
				<div id="intro-container">
					<div id="home-intro">
						';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
						<div class="video-container">
							<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/lsSC2vx7zFQ?rel=0" frameborder="0" allowfullscreen></iframe>
						</div>
						<a href="subscribe" class="home-subscribe-button">
							<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/subscribe-icon.png">
							<h2>Sign up</h2>
							<p>Stars or 8 Week Challenge</p>
						</a>						
						<a href="contact" class="home-contact-button">
							<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/contact-icon.png">
							<h2>Contact us</h2>
							<p>Time for your change</p>
						</a>
					</div>
				</div>
			</div>
			<div id="home-sidebar">
				<div id="home-badges">
					<img class="box-badge" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/crossfit-badge.jpg">
					<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/first-aid-badge.jpg">
					<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/reps-badge.jpg">
					<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/weltec-badge.jpg">
				</div>
				<div id="home-guarantee">
					<h2>Great results guaranteed</h2>
				</div>
				<div id="home-testimonials">	
					<div class="cycle-slideshow" data-cycle-slides="a">
						';

$scope->locally()->obj('grabTestimonials', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
							';

$scope->locally()->obj('Children', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
								<a href="about/testimonials" class="testimonial-slide">
									<p>';

$val .= $scope->locally()->obj('Content', null, true)->XML_val('FirstParagraph', null, true);
$val .= '</p>
									<span class="person">';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('XML', null, true);
$val .= '</span>
								</a>				
							';


}; $scope->popScope(); 
$val .= '							
						';


}; $scope->popScope(); 
$val .= '
					</div>	
				</div>		
			</div>
		</div>
	</div>
</div>';

