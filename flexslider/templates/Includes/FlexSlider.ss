<div class="flexslider flexslider_{$ID} $extraClass" <% if $cssWidth %>style="width: {$cssWidth}px"<% end_if %>>
  <ul class="slides">
    <% loop getSlides %>
        <% if $Picture %>
        <li>
            $flexCroppedImage($Top.imageWidth, $Top.imageHeight)
            <% if $SlideTitle || $SlideDescription %>			
            <div class="flex-caption-holder">
				<div class="wrapper">
					<div class="flex-caption">
						<div class="caption">
							<% if $getSlideTarget %><a href="$getSlideTarget" target="_blank"><% end_if %>
								<% if $SlideTitle %><h1>$SlideTitle</h1><% end_if %>
								<% if $SlideDescription %><p>$SlideDescription</p><% end_if %>					
							<% if $getSlideTarget %></a><% end_if %>
						</div>
					</div>
				</div>
			</div>			
            <% end_if %>
        </li>
        <% end_if %>
    <% end_loop %>
  </ul>
</div>