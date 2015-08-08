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

				<div class="account-page sws">
					<div class="order">
					
					<% if Order %>
						<% with Order %>
						
							<table class="table table-bordered">
								<tr>
									<th>Order #$ID - $Status</th>
								</tr>
								<tr>
									<td>
										$OrderedOn.Format(j M Y - g:i a)<br />
										($PaymentStatus)
									</td>
								</tr>
							</table>

							<% include Order %>
								 
							<% if Payments %>
								<% include OrderPayments %>
							<% end_if %>

						<% end_with %>

						$RepayForm
						
					<% else %>
						<p class="alert alert-error">
							<strong class="alert-heading"><% _t('AccountPage_order.WARNING','Warning!') %></strong>
							$Message.Raw
						</p>
					<% end_if %>
										
					</div>
				</div>
			</div>
		</div>
	</div>	
</div>