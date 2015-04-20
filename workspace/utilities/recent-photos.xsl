<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="recent-photos">
        <div id="recent_photos" class="module">
            <h4>Photos</h4>
            <ul>
                <xsl:apply-templates select="entry"/>
            </ul>
            <p class="see_all"><a href="">See all photos &#187;</a></p>
        </div>
    </xsl:template>

    <xsl:template match="recent-photos/entry">
        <li>
            <p><a href="{$root}/photos/{@id}"><img src="{$root}/image/2/75/75/5{photo/@path}/{photo/filename}" /></a></p>
        </li>                
    </xsl:template>

</xsl:stylesheet>