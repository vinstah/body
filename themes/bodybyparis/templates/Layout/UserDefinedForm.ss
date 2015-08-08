<div id="heading-background">
	<div class="container">
		<div class="wrapper">
			<div id="heading">
				<h1>$title</h1>
			</div>
		</div>
	</div>
</div>
<div id="page-background">
	<div class="container">
		<div class="wrapper">
			<div id="page">	
				<% if URLSegment = contact %>
					<div id="contact-left">				
						$Content
						<div id="contact-form-header">
							<h3>We would love to hear from you</h3>
						</div>
						<div id="the-form">
							$Form
						</div>
					</div>			
					<div id="contact-right">				
						<div class="contact-column">
							<h3>Body by Paris</h3>
							<ul>
								<li><b>P</b> 021 400 509</li> 
								<li><b>E</b> <a href="mailto:bodybyparis@hotmail.com">bodybyparis@hotmail.com</a></li>
							</ul>
						</div>					
						<div class="contact-column">
							<h3>Location</h3>
							27 Feist St, Naenae<br/>
							Lower Hutt, New Zealand
						</div>
						<h3 style="clear:both;">Find us on Google Maps</h3>
						<div id="google-map">						
							<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6003.007516188467!2d174.9469132113278!3d-41.210791294175266!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d475578339f83b5%3A0xb5a81cfa209c9271!2s27+Feist+St%2C+Naenae%2C+Lower+Hutt+5011!5e0!3m2!1sen!2snz!4v1409042300887" width="100%" height="420" frameborder="0"></iframe>
						</div>
					</div>
				<% else %>
					<div id="full-page-holder">
						<div id="contact-form-header">
							<h3>Please fill out the form below to sign up, we will be in touch</h3>
						</div>
						<div id="full-page-form">				
							$Form
						</div>
					</div>							
				<% end_if %>
			</div>
		</div>
	</div>	
</div>