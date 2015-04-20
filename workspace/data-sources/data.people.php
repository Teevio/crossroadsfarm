<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcepeople extends Datasource{
		
		var $dsParamROOTELEMENT = 'people';
		var $dsParamORDER = 'asc';
		var $dsParamGROUP = '81';
		var $dsParamLIMIT = '100';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'last-name';
		var $dsParamSTARTPAGE = '1';
		var $dsParamINCLUDEDELEMENTS = array(
				'first-name',
				'last-name',
				'description',
				'section',
				'photo',
				'order'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'People',
					 'author' => array(
							'name' => 'Stephen Hallgren',
							'website' => 'http://crossroadsfarm.org',
							'email' => 'stephen@teevio.com'),
					 'version' => '1.0',
					 'release-date' => '2009-10-23T15:03:19+00:00');	
		}
		
		function getSource(){
			return '17';
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