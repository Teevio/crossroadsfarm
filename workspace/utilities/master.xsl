<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>

<xsl:template match="/">

<html>
	<head>
		<title>

			<xsl:call-template name="page-title"/>

		</title>
		<meta name="verify-v1" content="ycw17fnKRilt92uu+7XVxPEU6+fv8GzRo3Vmqx1Oqzk=" />
        <meta name="description" content="Crossroads Farm exists in order to provide social, educational, spiritual, and relational opportunities to the secondary students of Hillsdale County." />
		<link rel="icon" type="images/png" href="/workspace/images/icons/bookmark.png" />
		<link rel="stylesheet" type="text/css" media="screen" href="/workspace/css/styles.css" />
        <xsl:comment><![CDATA[[if IE]><link rel="stylesheet" href="/workspace/css/ie.css" type="text/css" media="screen, projection"><![endif]]]></xsl:comment>
        <xsl:comment><![CDATA[[if IE 6]><link rel="stylesheet" href="/workspace/css/ie6.css" type="text/css" media="screen, projection"><![endif]]]></xsl:comment>

        


		<link rel="alternate" type="application/rss+xml" href="/rss/" />
	</head>
	<body id="{$current-page}">
	    <img src="/workspace/images/crf.jpg" style="visibility: hidden; position:absolute;left: -1000px" />
		<div id="package">
            <xsl:apply-templates select="data/navigation"/>
			<div id="wrapper">
        		<div id="masthead">
        			<h1>
        				<a href="{$root}"><strong><xsl:value-of select="$website-name"/></strong></a>
        			</h1>
        		</div>
                <div id="content">
                    <div id="header">

                        <!-- START EMBED CODE -->

                        <script type="text/javascript" src="http://crossroadsfarm.org/ssp_director/m/embed.js"></script>

                        <div id="album-4">

                        </div>

                        <xsl:text disable-output-escaping="yes">
                            &lt;script type=&quot;text/javascript&quot;&gt;

                        	SlideShowPro({
                        		attributes: {
                        			id: "album-4",
                        			width: 837,
                        			height: 264
                        		},
                        		mobile: {
                        			auto: false,
                        			poster: "crystal"
                        		},
                        		params: {
                        			bgcolor: "#000000",
                        			allowfullscreen: true
                        		},
                        		flashvars: {
                        			xmlFilePath: "http://crossroadsfarm.org/ssp_director/images.php?album=4",
                        			paramXMLPath: "http://crossroadsfarm.org/ssp_director/m/params/chromeless.xml",
                        			videoAutoStart: "Off",
                        			panZoom: "On",
                        			navLinkAppearance: "Numbers",
                        			contentScale: "Crop to Fit"
                        		}
                        	});
                                    &lt;/script&gt;                      
                            </xsl:text>


                        <!-- END EMBED CODE -->

                        <!-- <a href=""><img src="/workspace/images/header/home.jpg" /></a> -->
                        <a href="{$root}/support" class="header_overlay"><img src="/workspace/images/header/positively_impact.png" /></a>
                    </div>
                    <xsl:apply-templates/>
                    <div class="clear"></div>
                </div>
        		<ul id="footer">
        			<li>&#169; 2011 <a href="/" title="Crossroads Farm">Crossroads Farm</a></li>
        			<li>/</li>
        			<li>Site Design by <a href="http://teev.io" title="Teevio LLC">Teevio LLC</a></li>
        		</ul>
			</div>
		</div>
        <script type="text/javascript" charset="utf-8" src="/workspace/js/global.js"></script>
        <script type="text/javascript" src="http://include.reinvigorate.net/re_.js"></script>
        <xsl:text disable-output-escaping="yes">
            &lt;script type=&quot;text/javascript&quot;&gt;
                    try {
                    reinvigorate.track("67871-xyg1o73867");
                    } catch(err) {}            
                    
                    var _gaq = _gaq || [];
                     _gaq.push(['_setAccount', 'UA-6897005-1']);
                     _gaq.push(['_trackPageview']);

                     (function() {
                       var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                       ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                     })();
                &lt;/script&gt;                      
        </xsl:text>
	</body>
</html>

</xsl:template>

</xsl:stylesheet>