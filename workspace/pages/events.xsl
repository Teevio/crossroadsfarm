<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
    <xsl:import href="../utilities/col-right.xsl"/>
    <xsl:import href="../utilities/redeem-dropcard.xsl"/>
    <xsl:import href="../utilities/latest-newsletter.xsl"/>
    <xsl:import href="../utilities/upcoming-events.xsl"/>
    <xsl:import href="../utilities/event-detail.xsl"/>
        
    <xsl:template match="data">
        <div id="column_left">
            <xsl:choose>
                <xsl:when test="$id > 0">
                    <xsl:apply-templates select="event-detail"/>
                </xsl:when>
            </xsl:choose>
                <!-- <xsl:otherwise> -->
                    <xsl:apply-templates select="upcoming-events"/>                <!-- </xsl:otherwise> -->

        </div>
        <div id="column_right">
            <xsl:call-template name="col-right"/>
            <xsl:call-template name="ecfa"/>
        </div>

    </xsl:template>

</xsl:stylesheet>