<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcerecent_blogs extends Datasource{

		public $dsParamROOTELEMENT = 'recent-blogs';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '10';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';

		public $dsParamFILTERS = array(
				'30' => 'yes',
				'29' => 'earlier than {$today}, {$today}',
		);

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'date'
		);


		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Recent Blogs',
				'author' => array(
					'name' => 'Stephen Hallgren',
					'website' => 'http://crossroadsfarm.org',
					'email' => 'stephen@teevio.com'),
				'version' => '1.0',
				'release-date' => '2011-08-16T13:29:36+00:00'
			);
		}

		public function getSource(){
			return '6';
		}

		public function allowEditorToParse(){
			return true;
		}

		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			

			return $result;
		}

	}
