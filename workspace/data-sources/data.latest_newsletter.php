<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcelatest_newsletter extends Datasource{
		
		var $dsParamROOTELEMENT = 'latest-newsletter';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '1';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'date';
		var $dsParamSTARTPAGE = '1';
		var $dsParamINCLUDEDELEMENTS = array(
				'title',
				'date',
				'file-url',
				'file-upload'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Latest Newsletter',
					 'author' => array(
							'name' => 'Stephen Hallgren',
							'website' => 'http://crossroadsfarm.org',
							'email' => 'stephen@teevio.com'),
					 'version' => '1.0',
					 'release-date' => '2009-10-07T15:13:44+00:00');	
		}
		
		function getSource(){
			return '13';
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