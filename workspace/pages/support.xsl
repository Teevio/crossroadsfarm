<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
    <xsl:import href="../utilities/col-right.xsl"/>
    <xsl:import href="../utilities/redeem-dropcard.xsl"/> 
   <xsl:import href="../utilities/latest-newsletter.xsl"/>
    <xsl:import href="../utilities/page-give.xsl"/>
    <xsl:import href="../utilities/page-intern.xsl"/>
    <xsl:import href="../utilities/page-wishlist.xsl"/>
    
    <xsl:template match="data">
        <div id="column_left">
            <xsl:choose>
                <xsl:when test="$subpage = 'intern'">
                    <xsl:call-template name="page-intern"/>
                </xsl:when>
                <xsl:when test="$subpage = 'wishlist'">
                    <xsl:call-template name="page-wishlist"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="page-give"/>                    
                </xsl:otherwise>
            </xsl:choose>
        </div>
        <div id="column_right">
            <xsl:call-template name="col-right"/>
            <xsl:call-template name="ecfa"/>
        </div>
    </xsl:template>

</xsl:stylesheet>