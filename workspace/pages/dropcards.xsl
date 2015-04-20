<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
    <xsl:import href="../utilities/col-right.xsl"/>
    <xsl:import href="../utilities/latest-newsletter.xsl"/>
    <xsl:import href="../utilities/redeem-dropcard.xsl"/>
        
    <xsl:template match="data">
        <div id="column_left">
            <h3>Redeem Your Dropcard</h3>
<p>If you have a Crossroads Farm Dropcard you can use it to redeem your download.  The back of your card will have an access code.  This access code will allow you to download your audio track.</p>
<h4>Mike Rut and More</h4>
<p>If your Dropcard says "Mike Rut and More," you can use your access code with the widget below.</p>
<p>Get more music by visiting <a href="http://mikerut.com/">Mike Rut</a>, <a href="http://www.myspace.com/markwhiteband">The Mark White Band</a> and <a href="http://www.myspace.com/ryanhollidaymusic">Ryan Holliday's</a> websites.</p>

            <!-- begin widget HTML code -->
<!-- Widget code for Mike Rut and More-->
<!-- Widget dimensions are 450x300 -->
<!-- IMPORTANT: this widget code MUST be placed on a page accessible from the URL printed on your cards for your promotion to work properly.-->
<script src="http://www.dropcards.com/download/widget/widget2_RunActiveContent.js" language="javascript"></script>
<script type="text/javascript">
    <xsl:comment>
dropcards_Widget(5692);
    //</xsl:comment>
</script>
<!-- end widget HTML code -->

<h4>Your Best Wedding Picture</h4>
<p>If your Dropcard says "Your Best Weddding Picture," you can use your access code with the widget below.</p>
<p><strong>Note:</strong> File sizes range from 40-60 mb so downloads might take a while depending on your internet speed.</p>
            <!-- begin widget HTML code -->
<!-- Widget code for Your Best Wedding Picture-->
<!-- Widget dimensions are 450x300 -->
<!-- IMPORTANT: this widget code MUST be placed on a page accessible from the URL printed on your cards for your promotion to work properly.-->
<script src="http://www.dropcards.com/download/widget/widget2_RunActiveContent.js" language="javascript"></script>
<script type="text/javascript">
    <xsl:comment>
dropcards_Widget(5691);
    //</xsl:comment>
</script>
<!-- end widget HTML code -->

        </div>
        <div id="column_right">
            <xsl:call-template name="col-right"/>
            <xsl:call-template name="ecfa"/>
        </div>

    </xsl:template>

</xsl:stylesheet>