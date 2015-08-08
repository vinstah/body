<!DOCTYPE html>
	<head>
		<% base_tag %>
		<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">		
		<!--[if lt IE 9]><script src="//cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->	
		<link rel="shortcut icon" href="$ThemeDir/img/favicon.ico"/>
		<link rel="stylesheet" href="$ThemeDir/css/main.css" type="text/css">
		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		  ga('create', 'UA-58447613-1', 'auto');
		  ga('send', 'pageview');
		</script>
	</head>
	<body>
		<% include Header %>
			$Layout
		<% include Footer %>
		<script src="$ThemeDir/plugins/tinynav/tinynav.min.js" type="text/javascript"></script>
		<script src="//cdn.jsdelivr.net/cycle2/20130502/jquery.cycle2.min.js" type="text/javascript"></script>
		<script src="$ThemeDir/plugins/widow-fix/jquery.widowFix-1.3.2.min.js" type="text/javascript"></script>
		<script src="$ThemeDir/js/main.js" type="text/javascript"></script>
	</body>
</html>