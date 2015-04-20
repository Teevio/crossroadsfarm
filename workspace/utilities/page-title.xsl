<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="page-title">
    
    <xsl:value-of select="$website-name"/>
	<xsl:text> &#8212; </xsl:text>
		
	<xsl:choose>
	   <xsl:when test="$current-page = 'events' and $current-path != '/events/'">
           <xsl:value-of select="data/event-detail/entry/name" />	       
	   </xsl:when>
	   <xsl:when test="$current-page = 'blogs'">
           <xsl:value-of select="data/blogs/entry/title" />	       
	   </xsl:when>
	   <xsl:otherwise>
	       	<xsl:value-of select="$page-title"/>
	   </xsl:otherwise>
	</xsl:choose>

</xsl:template>

</xsl:stylesheet>