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
					<h3>The Body by Paris image gallery</h3>
				</div>
				<div id="the-gallery">
					<% loop OrderedImages %>
						<div class="the-gallery-image">
							<a class="fancybox" data-fancybox-group="gallery" href="$Filename" title="$Caption">
								$SetSize(250,250)
							</a>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div>
	</div>
</div>