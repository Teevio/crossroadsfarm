<?php

	require_once(TOOLKIT . '/class.event.php');
	
	Class eventsave_comment extends Event{
		
		const ROOTELEMENT = 'save-comment';
		
		public $eParamFILTERS = array(
			'akismet'
		);
			
		public static function about(){
			return array(
					 'name' => 'Save Comment',
					 'author' => array(
							'name' => 'Stephen Hallgren',
							'website' => 'http://crossroadsfarm.org.s28112.gridserver.com',
							'email' => 'stephen@teevio.com'),
					 'version' => '1.0',
					 'release-date' => '2008-08-26T21:03:39+00:00',
					 'trigger-condition' => 'action[save-comment]');	
		}

		public static function getSource(){
			return '9';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;save-comment result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/save-comment></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;save-comment result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/save-comment></code></pre>
        <p>The following is an example of what is returned if any filters fail:</p>
        <pre class="XML"><code>&lt;save-comment result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;filter type="admin-only" status="failed" />
  &lt;filter type="send-email" status="failed">Recipient username was invalid&lt;/filter>
  ...
&lt;/save-comment></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Author
    &lt;input name="fields[author]" type="text" />
  &lt;/label>
  &lt;label>Email
    &lt;input name="fields[email]" type="text" />
  &lt;/label>
  &lt;label>Website
    &lt;input name="fields[website]" type="text" />
  &lt;/label>
  &lt;label>Date
    &lt;input name="fields[date]" type="text" />
  &lt;/label>
  &lt;input name="fields[article]" type="hidden" value="..." />
  &lt;label>Comment
    &lt;textarea name="fields[comment]" rows="8" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Authorised
    &lt;input name="fields[authorised]" type="checkbox" />
  &lt;/label>
  &lt;input name="action[save-comment]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://crossroadsfarm.org.s28112.gridserver.com/success/" /></code></pre>
        <h3>Akismet Spam Filtering</h3>
        <p>Each entry will be passed to the <a href="http://akismet.com/">Akismet Spam filtering service</a> before saving. Should it be deemed as spam, Symphony will terminate execution of the Event, thus preventing the entry from being saved. You will receive notification in the Event XML. <strong>Note: Be sure to set your Akismet API key in the <a href="http://crossroadsfarm.org.s28112.gridserver.com/symphony/system/preferences/">Symphony Preferences</a>.</strong></p>
        <p>The following is an example of the XML returned form this filter:</p>
        <pre class="XML"><code>&lt;filter type="akismet" status="passed" />
&lt;filter type="akismet" status="failed">Author, Email and URL field mappings are required.&lt;/filter>
&lt;filter type="akismet" status="failed">Data was identified as spam.&lt;/filter></code></pre>
        <p>In order to provide Akismet with a correct set of data, it is required that you provide field mappings of Author, Email and URL. The value of these mappings directly point to values in the <code>fields</code> array of <code>POST</code> data. To specify a literal value, enclose the hidden fields <code>value</code> attribute in single quotes. In the following example, <code>author</code>, <code>website</code> and <code>email</code> would correspond to <code>fields[author]</code>, <code>fields[website]</code> and <code>literal@email.com</code> respectively:</p>
        <pre class="XML"><code>&lt;input name="akismet[author]" value="author" type="hidden" />
&lt;input name="akismet[email]" value="\'literal@email.com\'" type="hidden" />
&lt;input name="akismet[url]" value="website" type="hidden" /></code></pre>';
		}
		
		public function load(){			
			if(isset($_POST['action']['save-comment'])) return $this->__trigger();
		}
		
		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}		

	}

?>