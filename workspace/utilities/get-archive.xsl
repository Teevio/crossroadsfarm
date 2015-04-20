<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="archive">
  <xsl:apply-templates select="year/month"/>
</xsl:template>

<xsl:template match="month">
    <div id="recent_blogs" class="archive">
        <h4>
            <xsl:call-template name="format-date">
                <xsl:with-param name="date" select="concat(../@value, '-', @value, '-01')"/>
                <xsl:with-param name="format" select="'M Y'"/>
            </xsl:call-template>
        </h4>
        <ul class="archive">
            <xsl:apply-templates select="entry"/>
        </ul>
    </div>
</xsl:template>

<xsl:template match="month/entry">
    <li>
        <xsl:if test="position() mod 2 = 1">
          <xsl:attribute name="class">odd</xsl:attribute>
        </xsl:if>
        
        <p class="day">
            <xsl:call-template name="format-date">
                <xsl:with-param name="date" select="date"/>
                <xsl:with-param name="format" select="'D'"/>
            </xsl:call-template>
        </p>
        
        <p><a href="{$root}/blogs/{title/@handle}/"><xsl:value-of select="title"/></a></p>
        <p class="date">
            <xsl:value-of select="@comments"/> comment<xsl:if test="@comments != 1"><xsl:text>s</xsl:text></xsl:if>
        </p>
    </li>                

  <!-- <ul class="list">
    <li class="date">
      <xsl:call-template name="format-date">
        <xsl:with-param name="date" select="date"/>
        <xsl:with-param name="format" select="'D'"/>
      </xsl:call-template>
    </li>
    <li class="title">
      <a href="{$root}/blogs/{title/@handle}/">
        <xsl:value-of select="title"/>
      </a>
    </li>
    <li class="comments">
        <a href="{$root}/blogs/{title/@handle}/#comments">
          <xsl:text>Comments (</xsl:text>
          <xsl:value-of select="@comments"/>
          <xsl:text>)</xsl:text>
        </a>
    </li>
  </ul> -->
</xsl:template>

</xsl:stylesheet>