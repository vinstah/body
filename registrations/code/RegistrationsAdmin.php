<?php
class RegistrationsAdmin extends ModelAdmin{
	private static $managed_models = array('RegistrationTypes', 'Registrations');
	private static $url_segment = 'registration-types';
	private static $menu_title = 'Regitrations';
	
}