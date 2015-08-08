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
				<div id="sidebar">
					<% if Menu(2) %>			
						<% loop Level(1) %>
							<a class="side-heading-link" href="services"><h3>$Title</h3></a>
						<% end_loop %> 			
						<ul class="sidebar-navigation">
							<% loop Menu(2) %> 
								<li>
									<a href="$Link" class="$LinkingMode">
										<span class="arrow"><i class="fa fa-chevron-circle-right"></i></span>
										<span class="text">$Title.XML</span>
									</a>
								</li>
							<% end_loop %>
						</ul>
					<% end_if %>
				</div>			
				<div id="content">				
					$Content
					$Form				
				</div>					
			</div>
		</div>
	</div>	
</div>