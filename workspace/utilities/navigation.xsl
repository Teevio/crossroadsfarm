<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="navigation">
        <ul id="menu">
            <xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]"/>
        </ul>
    </xsl:template>

    <xsl:template match="page">
        <li>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">top</xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = last()">
                <xsl:attribute name="class">bottom</xsl:attribute>
            </xsl:if>

            <a href="{$root}/{@handle}/" title="{name}">
                <xsl:if test="@handle = $current-page">
                    <xsl:attribute name="class">active</xsl:attribute>
                </xsl:if>
                <xsl:if test="@handle = 'home'">
                    <xsl:attribute name="href">/</xsl:attribute>
                </xsl:if>

                <xsl:choose>
                    <xsl:when test="@handle = 'home'">
                        Home
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="name"/>
                    </xsl:otherwise>
                </xsl:choose>
            </a>
                <xsl:if test="@handle = 'support' and @handle = $current-page">
                    <!-- <ul id="submenu">
                    <li class="top"><a href="{$root}/{@handle}/" title="Give">Give</a></li>
                    <li><a href="{$root}/{@handle}/intern" title="Intern">Intern</a></li>
                    <li class="bottom"><a href="{$root}/{@handle}/wishlist" title="Wishlist">Wishlist</a></li>
                    </ul> -->
                </xsl:if>
                
                <xsl:if test="@handle = 'about' and @handle = $current-page">
                    <ul id="submenu">
                        <li class="top"><a href="{$root}/{@handle}/staff" title="Staff">Staff</a></li>
                        <li><a href="{$root}/{@handle}/coaches" title="Coaches">Coaches</a></li>
                        <li><a href="{$root}/{@handle}/crew" title="Crew">Crew</a></li>
                        <li class="bottom"><a href="{$root}/{@handle}/board" title="Board">Board</a></li>
                        <!-- <li><a href="{$root}/{@handle}/mission" title="Mission">Mission</a></li> -->
                        <!-- <li class="bottom"><a href="{$root}/{@handle}/doctrine" title="Doctrine">Doctrine</a></li> -->
                    </ul>
                </xsl:if>
        </li>
        <xsl:if test="@handle = 'about'">
        <li><a href="http://merch.crossroadsfarm.org">Merch</a></li>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>