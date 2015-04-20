<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
    <xsl:import href="../utilities/col-right.xsl"/>
    <xsl:import href="../utilities/redeem-dropcard.xsl"/>
    <xsl:import href="../utilities/latest-newsletter.xsl"/>

    <xsl:template match="data">
        <div id="column_left">
            <h3>Videos</h3>
            <p><xsl:comment> </xsl:comment></p>
            <script language="javascript">
                <xsl:comment>
                    if (AC_FL_RunContent == 0) {
                    alert("This page requires AC_RunActiveContent.js.");
                    } else {
                    AC_FL_RunContent(
                    'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0',
                    'width', '480',
                    'height', '360',
                    'src', '/videos',
                    'quality', 'high',
                    'pluginspage', 'http://www.macromedia.com/go/getflashplayer',
                    'align', 'middle',
                    'play', 'true',
                    'loop', 'true',
                    'scale', 'showall',
                    'wmode', 'window',
                    'devicefont', 'false',
                    'id', 'videos',
                    'bgcolor', '#ffffff',
                    'name', 'videos',
                    'menu', 'true',
                    'allowFullScreen', 'true',
                    'allowScriptAccess','sameDomain',
                    'movie', '/videos',
                    'salign', ''
                    ); //end AC code
                    }
                //</xsl:comment>
            </script>
            <noscript>
                <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="480" height="360" id="videos" align="middle">
                    <param name="allowScriptAccess" value="sameDomain" />
                    <param name="allowFullScreen" value="false" />
                    <param name="movie" value="/videos.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" />  <embed src="/videos.swf" quality="high" bgcolor="#ffffff" width="480" height="360" name="videos" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
                </object>
            </noscript>
        </div>
        <div id="column_right">
            <xsl:call-template name="col-right"/>
            <xsl:call-template name="ecfa"/>
        </div>
    </xsl:template>
</xsl:stylesheet>