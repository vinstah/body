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
						<% loop Level(2) %>
							<h3>$Title</h3>
						<% end_loop %> 			
						<ul class="sidebar-navigation">
							<% loop Menu(3) %> 
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
					<div class="wrapper">
						<div id="product-images">
							<div class="wrapper">
								<div id="main-product-image">
									<a href="$MainProductImage.Link" data-fancybox-group="gallery" class="fancybox">$MainProductImage</a>
								</div>
								<% loop $SortedImages %>
									<div class="other-product-image">
										<a href="$Link" data-fancybox-group="gallery" class="fancybox"><img src="$Link"></a>
									</div>							
								<% end_loop %>
							</div>
						</div>
						<div id="product-information">
							<div class="product sws">
								<div class="product-description">
									<h1>$Product.Title</h1>
									<h3 class="product-price-js">$Product.Price.Nice</h3>					
									$Product.Content
								</div>
								<div class="product-meta">
									<div class="add-to-cart">
										$ProductForm(1)
									</div>
								</div>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>