<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'pagination_maximum_rows' => '17',
			'allow_page_subscription' => '1',
			'lang' => 'en',
			'cookie_prefix' => 'sym-',
			'version' => '2.2.1',
			'pages_table_nest_children' => 'no',
			'strict_error_handling' => 'no',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'Crossroads Farm',
			'useragent' => 'Symphony/2.2.1',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
		),
		########


		###### DATABASE ######
		'database' => array(
			'character_set' => 'utf8',
			'character_encoding' => 'utf8',
			'runtime_character_set_alter' => '1',
			'disable_query_caching' => 'no',
			'host' 			=> 'localhost',
			'port' 			=> '3306',
			'user' 			=> 'crf',
			'password' 		=> 'DBulCwuP',
			'db' 			=> 'crossroadsfarm',
			'tbl_prefix' 	=> 'sym_',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'yes',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'H:i',
			'date_format' => 'd F Y',
			'timezone' => 'America/New_York',
			'datetime_separator' => ' ',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0775',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0775',
		),
		########


		###### MAP-LOCATION-FIELD ######
		'map-location-field' => array(
			'google-api-key' => null,
		),
		########


		###### AKISMET ######
		'akismet' => array(
			'api-key' => '508346008efc',
		),
		########


		###### CACHELITE ######
		'cachelite' => array(
			'lifetime' => '86400',
			'show-comments' => 'no',
			'backend-delegates' => 'yes',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########


		###### CKEDITOR ######
		'ckeditor' => array(
			'sections' => '18',
		),
		########


		###### EMAIL ######
		'email' => array(
			'default_gateway' => 'sendmail',
		),
		########


		###### EMAIL_SENDMAIL ######
		'email_sendmail' => array(
			'from_name' => 'Symphony',
			'from_address' => 'noreply@crossroadsfarm.org',
		),
		########


		###### EMAIL_SMTP ######
		'email_smtp' => array(
			'from_name' => 'Symphony',
			'from_address' => 'noreply@crossroadsfarm.org',
			'host' => '127.0.0.1',
			'port' => '25',
			'secure' => 'no',
			'auth' => '0',
			'username' => null,
			'password' => null,
		),
		########
	);
