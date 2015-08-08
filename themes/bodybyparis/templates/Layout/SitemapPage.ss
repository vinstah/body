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
				<h3>$SiteConfig.Title</h3>
				<div id="sitemap">
					<% loop Menu(1) %>		
						<li class="$LinkingMode">
							<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
							<% if Children %>
								<ul>
									<% loop Children %>
										<li class="$LinkingMode">
											<a href="$Link" title="$Title.XML">$MenuTitle.XML </a>
										</li>
									<% end_loop %>
								</ul>
							<% end_if %>	
						</li>
					<% end_loop %>
				</div>
			</div>
		</div>
	</div>	
</div>