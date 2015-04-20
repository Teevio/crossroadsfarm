<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/date-time.xsl"/>

<xsl:output method="xml" encoding="UTF-8" indent="yes" />

<xsl:template match="data">
  <rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
    <channel>
      <title><xsl:value-of select="$website-name"/></title>
      <link><xsl:value-of select="$root"/></link>
      <description><xsl:value-of select="$website-name"/> Events Feed</description>
      <language>en-us</language>
      <generator>Crossroads Farm</generator>
      <atom:link href="{$root}/events/rss/" rel="self" type="application/rss+xml" />
      <xsl:for-each select="rss-events/entry">
        <item>
          <title><xsl:value-of select="name"/></title>
          <link><xsl:value-of select="$root"/>/events/<xsl:value-of select="@id"/>/</link>
          <pubDate>
            <xsl:call-template name="format-date">
              <xsl:with-param name="date" select="start-date-time"/>
              <xsl:with-param name="format" select="'w, d m Y T'"/>
            </xsl:call-template>
            <xsl:text> </xsl:text>
            <xsl:value-of select="translate($timezone,':','')"/>
          </pubDate>
          <guid><xsl:value-of select="$root"/>/events/<xsl:value-of select="@id"/>/</guid>
          <description><xsl:value-of select="description"/></description>
        </item>
      </xsl:for-each>
    </channel>
  </rss>
</xsl:template>

</xsl:stylesheet>