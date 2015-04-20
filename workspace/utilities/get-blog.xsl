<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="get-images.xsl"/>

    <xsl:template match="homepage-blog | blogs">
        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4e66226e36318107"></script>
        <div id="blog">
            <xsl:apply-templates select="entry"/>
        </div>
    </xsl:template>

    <xsl:template match="homepage-blog/entry">
        <h3>
            <a href="{$root}/blogs/{title/@handle}/"><xsl:value-of select="title"/></a>
        </h3>
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
        <xsl:copy-of select="body/*[1]"/>
        <xsl:apply-templates select="/data/blog-images[entry]"/>
        <xsl:copy-of select="body/*[position() &gt; 1 and position() &lt; 4]"/>

        <ul class="meta">
        <!--
            <li class="icon-filed-under">
                <xsl:apply-templates select="categories/item"/>
            </li>
        -->
            <li class="icon-comments">
                <a href="{$root}/blogs/{title/@handle}/#comments">
                    <xsl:value-of select="@comments"/><xsl:text> comment</xsl:text>
                    <xsl:if test="@comments != 1">
                        <xsl:text>s</xsl:text>
                    </xsl:if>
                </a>
            </li>
            <li>/</li>
            <li class="continue_reading"><a href="{$root}/blogs/{title/@handle}/">Continue reading...</a></li>
        </ul>
        <ul class="meta">
            <li><a id="atbutton_{title/@handle}" class="atbutton"></a></li>
            <li>/</li>
            <li><a href="http://feedburner.google.com/fb/a/mailverify?uri=CrossroadsFarm&amp;loc=en_US" onclick="window.open(this.href, 'popupwindow', 'scrollbars=yes,width=600,height=600');return false;">Be alerted of new posts via email</a></li>
            
        </ul>
        <xsl:text disable-output-escaping="yes">
            &lt;script type=&quot;text/javascript&quot;&gt;
        </xsl:text>
            addthis.button("#atbutton_<xsl:value-of select="title/@handle"/>", {}, {url: "<xsl:value-of select="$root"/>/blogs/<xsl:value-of select="title/@handle"/>", title: "<xsl:value-of select="title"/>"});
        <xsl:text disable-output-escaping="yes">
            &lt;/script&gt;
        </xsl:text>
        <hr />
    </xsl:template>

    <xsl:template match="blogs/entry">
        <h3>
            <a href="{$root}/blogs/{title/@handle}/"><xsl:value-of select="title"/></a>
            
            <!--
                <xsl:if test="$is-logged-in = 'true'">
                    <span class="edit"><xsl:text> &#8212; </xsl:text><a href="{$root}/symphony/publish/{../section/@handle}/edit/{@id}/">Edit</a></span>
                </xsl:if>
            -->
        </h3>
        <p class="date">
            <span>
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="date"/>
                    <xsl:with-param name="format" select="'M'"/>
                </xsl:call-template>
            </span>
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
        <xsl:copy-of select="body/*[1]"/>
        <xsl:apply-templates select="/data/blog-images[entry]"/>
        <xsl:copy-of select="body/*[position() &gt; 1]"/>

    </xsl:template>

    <xsl:template match="categories/item">
        <xsl:value-of select="."/>
        <xsl:if test="position() != last()">
            <xsl:text>, </xsl:text>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>