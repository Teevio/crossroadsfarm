<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="comments">
  <h4>
    <xsl:text>Comments</xsl:text>
  </h4>
  <div id="comments">
    <xsl:apply-templates select="entry"/>
    <xsl:apply-templates select="error"/>
  </div>
</xsl:template>

<xsl:template match="comments/entry">
  <dl class="comment">
      <xsl:if test="position() mod 2 = 1">
        <xsl:attribute name="class">odd comment</xsl:attribute>
      </xsl:if>
      
    <xsl:if test="authorised = 'Yes'">
      <xsl:attribute name="class">
        <xsl:text>comment authorised</xsl:text>
      </xsl:attribute>
    </xsl:if>
    <dt>
      <xsl:choose>
        <xsl:when test="website">
          <a href="{website}">
            <xsl:value-of select="author"/>
          </a>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="author"/>
        </xsl:otherwise>
      </xsl:choose>
      <em>
        <xsl:call-template name="format-date">
          <xsl:with-param name="date" select="date"/>
          <xsl:with-param name="format" select=" 'm. d Y, t' "/>
        </xsl:call-template>
      </em>
    </dt>
    <dd>
      <xsl:copy-of select="comment/*"/>
    </dd>
  </dl>
</xsl:template>

<xsl:template match="comments/error">
  <p>There are no comments made so far.</p>
</xsl:template>

</xsl:stylesheet>