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
				<div id="the-calendar">				
					<p class="feed"><a href="$Link(rss)"><% _t('SUBSCRIBE','Calendar RSS Feed') %></a></p>
					$Content
					<div class="event-calendar-controls">
						$CalendarWidget
						$MonthJumper
						<% include QuickNav %>
					</div>
					<h2>$DateHeader</h2>
					<% if Events %>
					<div id="event-calendar-events">
						<% include EventList %>
					</div>
					<% else %>
						<p><% _t('NOEVENTS','There are no events') %>.</p>
					<% end_if %>
				</div>
			</div>
		</div>
	</div>	
</div>