<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="recent-events">
        <div id="recent_events" class="module">
            <h4>Upcoming Events / <a href="http://crossroadsfarm.org/workspace/uploads/CRF2011-12.pdf">Download 2011-12</a></h4>
            <ul>
                <xsl:apply-templates select="entry"/>
            </ul>
            <p class="see_all"><a href="{$root}/events/">See all events &#187;</a></p>

            <p></p>
        </div>
    </xsl:template>

    <xsl:template match="recent-events/entry">
        <li>
            <!-- <xsl:if test="position() mod 2 = 1">
              <xsl:attribute name="class">odd</xsl:attribute>
            </xsl:if> -->

            <p><a href="{$root}/events/{@id}"><xsl:value-of select="name"/><em> / <xsl:call-template name="format-date">
                <xsl:with-param name="date" select="start-date-time"/>
                <xsl:with-param name="format" select="'W'"/>
            </xsl:call-template>
            <xsl:text>, </xsl:text>
            <xsl:call-template name="format-date">
                <xsl:with-param name="date" select="start-date-time"/>
                <xsl:with-param name="format" select="'M'"/>
            </xsl:call-template>
            <xsl:text> </xsl:text>
            <xsl:call-template name="format-date">
                <xsl:with-param name="date" select="start-date-time"/>
                <xsl:with-param name="format" select="'d'"/>
            </xsl:call-template>
            <xsl:text>, </xsl:text>
            <xsl:call-template name="format-date">
                <xsl:with-param name="date" select="start-date-time"/>
                <xsl:with-param name="format" select="'Y'"/>
            </xsl:call-template></em></a></p>
        </li>                
    </xsl:template>

</xsl:stylesheet>