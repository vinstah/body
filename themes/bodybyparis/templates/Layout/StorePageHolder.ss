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
				<div class="page-intro">
					$Content
				</div>
				<div id="store-content">
					<% loop Children %>
						<a href="$Link" class="store-section">
							$ProductRangeImage.setWidth(298)
							<span class="range-title">$Title</span>
						</a>			
					<% end_loop %>
				</div>		
			</div>
		</div>
	</div>	
</div>