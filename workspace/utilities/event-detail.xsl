<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="event-detail">
        <div id="event-detail">
            <h3><a href=""><xsl:value-of select="entry/name" /></a></h3>
            <p class="date">
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="entry/start-date-time"/>
                    <xsl:with-param name="format" select="'M d, Y'"/>
                </xsl:call-template>
            </p>
            <xsl:copy-of select="entry/description/*"/>
            <div class="hrule"><span>&#160;</span></div>
        </div>

        <!-- <xsl:apply-templates select="entry"/> -->
    </xsl:template>

</xsl:stylesheet>