<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="recent-blogs">
        <div id="recent_blogs">
            <h4>Recent Posts</h4>
            <ul>
                <xsl:apply-templates select="entry"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="recent-blogs/entry">
        <li>
            <xsl:if test="position() mod 2 = 1">
              <xsl:attribute name="class">odd</xsl:attribute>
            </xsl:if>
            
            <p><a href="{$root}/blogs/{title/@handle}/"><xsl:value-of select="title"/></a></p>
            <p class="date">
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="date"/>
                    <xsl:with-param name="format" select="'W'"/>
                </xsl:call-template>
                <xsl:text>, </xsl:text>
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="date"/>
                    <xsl:with-param name="format" select="'M'"/>
                </xsl:call-template>
                <xsl:text> </xsl:text>
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="date"/>
                    <xsl:with-param name="format" select="'d'"/>
                </xsl:call-template>
                <xsl:text>, </xsl:text>
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="date"/>
                    <xsl:with-param name="format" select="'Y'"/>
                </xsl:call-template>
            </p>
                    </li>                
    </xsl:template>

</xsl:stylesheet>