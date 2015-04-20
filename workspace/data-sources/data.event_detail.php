<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceevent_detail extends Datasource{
		
		var $dsParamROOTELEMENT = 'event-detail';
		var $dsParamORDER = 'asc';
		var $dsParamLIMIT = '1';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '{$id}';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'id' => '{$id}',
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
					 'name' => 'Event Detail',
					 'author' => array(
							'name' => 'Stephen Hallgren',
							'website' => 'http://crossroadsfarm.org.s28112.gridserver.com',
							'email' => 'stephen@teevio.com'),
					 'version' => '1.0',
					 'release-date' => '2008-11-10T15:38:51+00:00');	
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