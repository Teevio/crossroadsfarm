<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
    <xsl:import href="../utilities/get-archive.xsl"/>
    <xsl:import href="../utilities/get-comments.xsl"/>
    <xsl:import href="../utilities/col-right.xsl"/>
    
    <xsl:template match="data">
        <div id="column_left">
            <h2>Archive</h2>
            <h3>History in the making</h3>
            <xsl:apply-templates select="archive"/>        
        </div>
        <div id="column_right">
            <xsl:call-template name="col-right"/>
            <xsl:call-template name="ecfa"/>
        </div>
    </xsl:template>

</xsl:stylesheet>