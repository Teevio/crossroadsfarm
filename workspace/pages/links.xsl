<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
    <xsl:import href="../utilities/col-right.xsl"/>
    <xsl:import href="../utilities/redeem-dropcard.xsl"/>
    <xsl:import href="../utilities/latest-newsletter.xsl"/>
    <xsl:import href="../utilities/get-links.xsl"/>
    
    <xsl:template match="data">
        <div id="column_left">
            <h3>Links</h3>
            <p>At <strong>Crossroads Farm</strong> it is our desire to be your rural youth headquarters.  There are many good, solid resources available out there, as well as fun, direction, and information.  Please peruse our "links."  If you are aware of one that may benefit others, please <a href="/contact">contact us</a>.  Here are a few of our favorites...</p>
            <xsl:apply-templates select="links"/>
        </div>
        <div id="column_right">
            <xsl:call-template name="col-right"/>
            <xsl:call-template name="ecfa"/>
        </div>

    </xsl:template>

</xsl:stylesheet>