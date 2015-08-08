<?php
$val .= '<!DOCTYPE html>
	<head>
		';

$val .= SSViewer::get_base_tag($val);
$val .= '
		<title>';

if ($scope->locally()->hasValue('MetaTitle', null, true)) { 
$val .= $scope->locally()->XML_val('MetaTitle', null, true);

}else { 
$val .= $scope->locally()->XML_val('Title', null, true);

}
$val .= ' &raquo; ';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</title>
		';

$val .= $scope->locally()->XML_val('MetaTags', array('false'), true);
$val .= '
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">		
		<!--[if lt IE 9]><script src="//cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->	
		<link rel="shortcut icon" href="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/img/favicon.ico"/>
		<link rel="stylesheet" href="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/css/main.css" type="text/css">
		<script>
		  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');

		  ga(\'create\', \'UA-58447613-1\', \'auto\');
		  ga(\'send\', \'pageview\');
		</script>
	</head>
	<body>
		';

$val .= SSViewer::execute_template('Header', $scope->getItem(), array(), $scope);

$val .= '
			';

$val .= $scope->locally()->XML_val('Layout', null, true);
$val .= '
		';

$val .= SSViewer::execute_template('Footer', $scope->getItem(), array(), $scope);

$val .= '
		<script src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/plugins/tinynav/tinynav.min.js" type="text/javascript"></script>
		<script src="//cdn.jsdelivr.net/cycle2/20130502/jquery.cycle2.min.js" type="text/javascript"></script>
		<script src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/plugins/widow-fix/jquery.widowFix-1.3.2.min.js" type="text/javascript"></script>
		<script src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/js/main.js" type="text/javascript"></script>
	</body>
</html>';

