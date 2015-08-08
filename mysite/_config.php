<?php

global $project;
$project = 'mysite';

// global $databaseConfig;
// $databaseConfig = array(
// 	"type" => 'MySQLDatabase',
// 	"server" => 'localhost',
// 	"username" => '8e586a4ba0d9',
// 	"password" => 'f2620516e49f6333',
// 	"database" => 'ss_bodybyparis',
// 	"path" => '',
// );

// Set the site locale
i18n::set_locale('en_US');
Object::add_extension('Page', 'FlexSliderExtension');
Director::set_environment_type("dev");
require_once('conf/ConfigureFromEnv.php');