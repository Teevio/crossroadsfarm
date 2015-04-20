<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcerecent_photos extends Datasource{
		
		var $dsParamROOTELEMENT = 'recent-photos';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '4';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		var $dsParamINCLUDEDELEMENTS = array(
				'title',
				'description',
				'photo'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Recent Photos',
					 'author' => array(
							'name' => 'Stephen Hallgren',
							'website' => 'http://crossroadsfarm.org.s28112.gridserver.com',
							'email' => 'stephen@teevio.com'),
					 'version' => '1.0',
					 'release-date' => '2008-09-15T19:24:32+00:00');	
		}
		
		function getSource(){
			return '15';
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