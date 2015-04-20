<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="latest-newsletter">
        <div id="download_newsletter">
            <p class="download"><a href="/workspace/{entry/file-upload}">Down On The Farm / <xsl:value-of select="entry/title"/></a></p>
            <p class="see_all"><!-- <a href="">See all newsletters &#187;</a> -->&#160;</p>
        </div>
    </xsl:template>
    
</xsl:stylesheet>