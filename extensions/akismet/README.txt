
Akismet Spam Filtering
------------------------------------

Version: 1.2
Author: Alistair Kearney (http://pointybeard.com)
Build Date: 13th May 2008
Requirements: Symphony Beta revision 5 or greater.


[INSTALLATION]

1. Upload the 'akismet' folder in this archive to your Symphony 'extensions' folder.

2. Enable it at System > Extensions.

3. Go to System > Preferences and enter your Wordpress API key.

4. Add the "Akismet Spam Filtering" filter rule to your Event via Blueprints > Events

5. Save the Event.

6. Follow the directions at the bottom of your Event's documentation section

7. Boogie all night long!


[CHANGELOG]

- Uses the "Akismet CURL Class", written by David Pennington (http://www.codexplorer.com), 
  for connections to the Akismet server. This is faster than using fsockopen.

