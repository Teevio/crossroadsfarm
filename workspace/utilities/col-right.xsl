<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/contact-schedule.xsl"/>
    <xsl:import href="../utilities/social.xsl"/>
    <xsl:import href="../utilities/donate.xsl"/>
    <xsl:import href="../utilities/latest-newsletter.xsl"/>
    <xsl:import href="../utilities/redeem-dropcard.xsl"/>

    <xsl:template name="col-right">
        <xsl:call-template name="contact-schedule"/>
        <xsl:call-template name="social"/>
        <xsl:call-template name="donate"/>
        <xsl:call-template name="redeem-dropcard"/>
        <xsl:apply-templates select="latest-newsletter"/>
    </xsl:template>
    
</xsl:stylesheet>