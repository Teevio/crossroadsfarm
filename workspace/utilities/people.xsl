<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="people/section">
        <xsl:param name="sectionType"/>
        <xsl:if test="@handle = $sectionType">
            <ul>
                <xsl:apply-templates select="entry">
                    <xsl:sort select="order" order="ascending" />
                    <xsl:sort select="last-name" order="ascending" />
                </xsl:apply-templates>                    
            </ul>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="section/entry"> 
        <li>
            <xsl:if test="position() mod 2 = 1">
              <xsl:attribute name="class">odd</xsl:attribute>
            </xsl:if>
            
            <xsl:variable name="filename" select="photo/filename" />

            <xsl:if test="$filename != ' '">
                <p><img src="{$root}/image/2/200/300/5/{photo/filename}" /></p>
            </xsl:if>             
            
            <h4><xsl:value-of select="first-name"/><xsl:text> </xsl:text><xsl:value-of select="last-name"/></h4>
            <p><xsl:copy-of select="description"/></p>
            <p style="clear:both"></p>
        </li>
    </xsl:template>
</xsl:stylesheet>