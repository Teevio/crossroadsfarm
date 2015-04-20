<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
    <xsl:import href="../utilities/get-blog.xsl"/>
    <xsl:import href="../utilities/get-comments.xsl"/>
    <xsl:import href="../utilities/col-right.xsl"/>
    <xsl:import href="../utilities/redeem-dropcard.xsl"/>
    <xsl:import href="../utilities/latest-newsletter.xsl"/>
    
    <xsl:template match="data">
        <div id="column_left">
            <xsl:apply-templates select="blogs"/>
<p><a href="http://feedburner.google.com/fb/a/mailverify?uri=CrossroadsFarm&amp;loc=en_US" onclick="window.open(this.href, 'popupwindow', 'scrollbars=yes,width=600,height=600');return false;">Be alerted of new posts via email</a></p>

            <p><a id="atbutton_{blogs/entry/title/@handle}" class="atbutton"></a></p>
            <xsl:text disable-output-escaping="yes">
                &lt;script type=&quot;text/javascript&quot;&gt;
            </xsl:text>
                addthis.button("#atbutton_<xsl:value-of select="blogs/entry/title/@handle"/>", {}, {url: "<xsl:value-of select="$root"/>/blogs/<xsl:value-of select="blogs/entry/title/@handle"/>", title: "<xsl:value-of select="blogs/entry/title"/>"});
            <xsl:text disable-output-escaping="yes">
                &lt;/script&gt;
            </xsl:text>

            <div class="hrule"><span>&#160;</span></div>
            <xsl:apply-templates select="comments"/>
            <div class="hrule"><span>&#160;</span></div>
            <h4>Make a comment</h4>
            <form action="" method="post" id="comment_form">
                <xsl:for-each select="events/save-comment">
                    <p class="{@result}">
                        <xsl:choose>
                            <xsl:when test="@result = 'success'">Your comment has been saved successfully.</xsl:when>
                            <xsl:otherwise>The system encountered errors when saving your comment. Please check if all the required fields have been filled.</xsl:otherwise>
                        </xsl:choose>
                    </p>
                </xsl:for-each>
                <fieldset>
                    <label class="required">
                        <xsl:text>Name</xsl:text><em>*</em>
                        <input type="text" name="fields[author]" class="textfield" value="{events/save-comment/post-values/author}" />
                    </label>
                    <label class="required">
                        <xsl:text>Email</xsl:text><em>*</em>
                        <input type="text" name="fields[email]" class="textfield" value="{events/save-comment/post-values/email}" />
                    </label>
                    <label>
                        <xsl:text>Website </xsl:text><small>http://</small>
                        <input type="text" name="fields[website]" class="textfield" value="{events/save-comment/post-values/website}" />
                    </label>
                    <label class="required">
                        <xsl:text>Comment</xsl:text><em>*</em>
                        <textarea name="fields[comment]" rows="5" cols="21"><xsl:value-of select="events/save-comment/post-values/comment" /></textarea>
                    </label>

                    <input name="fields[blog]" value="{blogs/entry/@id}" type="hidden" />

                    <input name="akismet[author]" value="author" type="hidden" />
                    <input name="akismet[email]" value="email" type="hidden" />
                    <input name="akismet[url]" value="website" type="hidden" />

                    <input id="submit" src="/workspace/images/btn-post_comment.gif" type="image" name="action[save-comment]" value="Post Comment" />
                </fieldset>
            </form>
        </div>
        <div id="column_right">
            <xsl:call-template name="col-right"/>
            <xsl:call-template name="ecfa"/>
        </div>

    </xsl:template>

</xsl:stylesheet>