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
						<% loop Level(1) %>
							<a class="side-heading-link" href="services"><h3>$Title</h3></a>
						<% end_loop %> 			
						<ul class="sidebar-navigation">
							<% loop Menu(2) %> 
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
					$Content			
					<% if URLSegment = counselling %>
						<h3>Counsellor</h3>
					<% else %>
						<h3>Trainers</h3>
					<% end_if %>
					<% if URLSegment = personal-training %>
						<% loop $grabStaff %>
							<% loop Children %>						
								<% if TagPersonalTraining %>
									<div class="services-trainers">			
										<a href="$link">$TeamMemberImage.CroppedImage(140,140)</a>
										<div class="trainer-name">$Title.XML</div>					
									</div>
								<% end_if %>
							<% end_loop %>
						<% end_loop %>						
					<% else_if URLSegment = sport-specific %>
						<% loop $grabStaff %>
							<% loop Children %>						
								<% if TagSportSpecific %>		
									<div class="services-trainers">
										<a href="$link">$TeamMemberImage.CroppedImage(140,140)</a>
										<div class="trainer-name">$Title.XML</div>
									</div>
								<% end_if %>
							<% end_loop %>
						<% end_loop %>
					<% else_if URLSegment = team-training %>
						<% loop $grabStaff %>
							<% loop Children %>						
								<% if TagTeamTraining %>
									<div class="services-trainers">
										<a href="$link">$TeamMemberImage.CroppedImage(140,140)</a>
										<div class="trainer-name">$Title.XML</div>
									</div>
								<% end_if %>
							<% end_loop %>
						<% end_loop %>
					<% else_if URLSegment = massage %>
						<% loop $grabStaff %>
							<% loop Children %>						
								<% if TagMassage %>
									<div class="services-trainers">
										<a href="$link">$TeamMemberImage.CroppedImage(140,140)</a>
										<div class="trainer-name">$Title.XML</div>
									</div>		
								<% end_if %>
							<% end_loop %>
						<% end_loop %>
					<% else_if URLSegment = boxing %>
						<% loop $grabStaff %>
							<% loop Children %>						
								<% if TagBoxing %>
									<div class="services-trainers">
										<a href="$link">$TeamMemberImage.CroppedImage(140,140)</a>
										<div class="trainer-name">$Title.XML</div>
									</div>
								<% end_if %>
							<% end_loop %>
						<% end_loop %>
					<% else_if URLSegment = crossfit %>
						<% loop $grabStaff %>
							<% loop Children %>		
								<% if TagCrossFit %>
									<div class="services-trainers">
										<a href="$link">$TeamMemberImage.CroppedImage(140,140)</a>
										<div class="trainer-name">$Title.XML</div>
									</div>		
								<% end_if %>
							<% end_loop %>
						<% end_loop %>
					<% else_if URLSegment = counselling %>
						<% loop $grabStaff %>
							<% loop Children %>		
								<% if TagCounselling %>
									<div class="services-trainers">
										<a href="$link">$TeamMemberImage.CroppedImage(140,140)</a>
										<div class="trainer-name">$Title.XML</div>
									</div>		
								<% end_if %>
							<% end_loop %>
						<% end_loop %>
					<% else_if URLSegment = mentoring %>
						<% loop $grabStaff %>
							<% loop Children %>		
								<% if TagMentoring %>
									<div class="services-trainers">
										<a href="$link">$TeamMemberImage.CroppedImage(140,140)</a>
										<div class="trainer-name">$Title.XML</div>
									</div>		
								<% end_if %>
							<% end_loop %>
						<% end_loop %>
					<% end_if %>
					$Form			
				</div>
			</div>
		</div>
	</div>	
</div>