<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceupcoming_events extends Datasource{
		
		var $dsParamROOTELEMENT = 'upcoming-events';
		var $dsParamORDER = 'asc';
		var $dsParamGROUP = '57';
		var $dsParamLIMIT = '50';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'start-date-time';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'57' => '{$today} to 2030-01-01',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'name',
				'description',
				'start-date-time',
				'end-date-time'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Upcoming Events',
					 'author' => array(
							'name' => 'Stephen Hallgren',
							'website' => 'http://crossroadsfarm.org.s28112.gridserver.com',
							'email' => 'stephen@teevio.com'),
					 'version' => '1.0',
					 'release-date' => '2008-11-10T16:04:24+00:00');	
		}
		
		function getSource(){
			return '12';
		}
		
		function allowEditorToParse(){
			return true;
		}
		
		function grab(&$param_pool){
			$result = NULL;
				
			include(TOOLKIT . '/data-sources/datasource.section.php');
			
			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

?>