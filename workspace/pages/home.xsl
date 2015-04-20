<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
<xsl:import href="../utilities/get-blog.xsl"/>
<xsl:import href="../utilities/get-comments.xsl"/>
<xsl:import href="../utilities/recent-blogs.xsl"/>
<xsl:import href="../utilities/recent-photos.xsl"/>
<xsl:import href="../utilities/recent-events.xsl"/>
<xsl:import href="../utilities/latest-newsletter.xsl"/>
<xsl:import href="../utilities/col-right.xsl"/>
<xsl:import href="../utilities/redeem-dropcard.xsl"/>

<xsl:template match="data">
  <div id="column_left">
    <!-- <div id="jay-laura"><a href="http://merch.crossroadsfarm.org/product/just-for-parents"></a></div> -->
    <xsl:apply-templates select="homepage-blog"/>
    <xsl:apply-templates select="recent-blogs"/>
  </div>
  <div id="column_right">
    <xsl:call-template name="col-right"/>
    <!-- <xsl:apply-templates select="recent-photos"/> -->
    <xsl:apply-templates select="recent-events"/>
            <xsl:call-template name="ecfa"/>
  </div>
</xsl:template>

</xsl:stylesheet>