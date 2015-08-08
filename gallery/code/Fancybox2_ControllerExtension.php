<?php

class Fancybox2_ControllerExtension extends DataExtension {

	public function onAfterInit() {
		
		Requirements::javascript('http://cdn.jsdelivr.net/fancybox/2.1.5/jquery.fancybox.pack.js');
		Requirements::css("http://cdn.jsdelivr.net/fancybox/2.1.5/jquery.fancybox.min.css");
		Requirements::javascript('gallery/javascript/fancybox2/GalleryPage.js');
		
	}
	
}
