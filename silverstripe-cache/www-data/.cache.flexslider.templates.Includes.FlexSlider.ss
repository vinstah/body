<?php
$val .= '<div class="flexslider flexslider_';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= '" ';

if ($scope->locally()->hasValue('cssWidth', null, true)) { 
$val .= 'style="width: ';

$val .= $scope->locally()->XML_val('cssWidth', null, true);
$val .= 'px"';


}
$val .= '>
  <ul class="slides">
    ';

$scope->locally()->obj('getSlides', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
        ';

if ($scope->locally()->hasValue('Picture', null, true)) { 
$val .= '
        <li>
            ';

$val .= $scope->locally()->XML_val('flexCroppedImage', array($scope->locally()->obj('Top', null, true)->XML_val('imageWidth', null, true), $scope->locally()->obj('Top', null, true)->XML_val('imageHeight', null, true)), true);
$val .= '
            ';

if ($scope->locally()->hasValue('SlideTitle', null, true)||$scope->locally()->hasValue('SlideDescription', null, true)) { 
$val .= '			
            <div class="flex-caption-holder">
				<div class="wrapper">
					<div class="flex-caption">
						<div class="caption">
							';

if ($scope->locally()->hasValue('getSlideTarget', null, true)) { 
$val .= '<a href="';

$val .= $scope->locally()->XML_val('getSlideTarget', null, true);
$val .= '" target="_blank">';


}
$val .= '
								';

if ($scope->locally()->hasValue('SlideTitle', null, true)) { 
$val .= '<h1>';

$val .= $scope->locally()->XML_val('SlideTitle', null, true);
$val .= '</h1>';


}
$val .= '
								';

if ($scope->locally()->hasValue('SlideDescription', null, true)) { 
$val .= '<p>';

$val .= $scope->locally()->XML_val('SlideDescription', null, true);
$val .= '</p>';


}
$val .= '					
							';

if ($scope->locally()->hasValue('getSlideTarget', null, true)) { 
$val .= '</a>';


}
$val .= '
						</div>
					</div>
				</div>
			</div>			
            ';


}
$val .= '
        </li>
        ';


}
$val .= '
    ';


}; $scope->popScope(); 
$val .= '
  </ul>
</div>';

