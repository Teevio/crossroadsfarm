<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="links">
        <div id="links">
            <xsl:apply-templates select="category"/>
        </div>
    </xsl:template>

    <xsl:template match="links/category">
        <h4>
            <xsl:value-of select="@value"/>
        </h4>
        <ul>
            <xsl:apply-templates select="entry">
                <xsl:sort select="title"/>
            </xsl:apply-templates>
        </ul>
    </xsl:template>
    
    <xsl:template match="category/entry"> 
        <li>
            <xsl:if test="position() mod 2 = 1">
              <xsl:attribute name="class">odd</xsl:attribute>
            </xsl:if>

            <p><a href="{link}" target="_blank"><xsl:value-of select="title"/></a></p>
            <p class="date"><xsl:value-of select="description"/></p>
        </li>
    </xsl:template>
</xsl:stylesheet>