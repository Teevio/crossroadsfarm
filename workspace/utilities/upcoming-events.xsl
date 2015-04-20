<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="upcoming-events">
        <h3>Upcoming Events</h3>
		<p><b>2013-2014 Program Calendar</b></p>
		<iframe src="https://www.google.com/calendar/embed?showTitle=0&amp;showTabs=0&amp;showCalendars=0&amp;height=375&amp;wkst=1&amp;bgcolor=%23003333&amp;src=crossroadsfarmcalendar%40gmail.com&amp;color=%23875509&amp;ctz=America%2FNew_York" style=" border:solid 1px #777 " width="480" height="375" frameborder="0" scrolling="no"></iframe>
        <xsl:apply-templates select="year/month"/>
    </xsl:template>

    <xsl:template match="month">
        <div id="recent_blogs" class="events">
            <h4>
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="concat(../@value, '-', @value, '-01')"/>
                    <xsl:with-param name="format" select="'M Y'"/>
                </xsl:call-template>
            </h4>
            <ul class="archive">
                <xsl:apply-templates select="entry"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="month/entry">
        <li>
            <xsl:if test="position() mod 2 = 1">
                <xsl:attribute name="class">odd</xsl:attribute>
            </xsl:if>

            <p class="day">
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="start-date-time"/>
                    <xsl:with-param name="format" select="'D'"/>
                </xsl:call-template>
            </p>

            <p><a href="{$root}/events/{@id}"><xsl:value-of select="name"/></a></p>
            <p class="date">
                <xsl:value-of select="description"/>&#160;
            </p>
        </li>                
    </xsl:template>

</xsl:stylesheet>