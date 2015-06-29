<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
    <xsl:import href="../utilities/col-right.xsl"/>
    <xsl:import href="../utilities/redeem-dropcard.xsl"/>
    <xsl:import href="../utilities/latest-newsletter.xsl"/>

    <xsl:template match="data">
        <div id="column_left">
            <h3>Contact</h3>

            <p><a href="http://maps.google.com/maps?f=q&amp;hl=en&amp;geocode=&amp;q=5520+W+Card+Rd,+Reading,+MI+49274&amp;sll=37.0625,-95.677068&amp;sspn=55.806079,114.257812&amp;ie=UTF8&amp;ll=41.85406,-84.736004&amp;spn=0.025956,0.05579&amp;z=15&amp;iwloc=addr" title="Get Directions" class="noborder"><img src="/workspace/images/contact-map.jpg" alt="Map of Crossroads Farm" /></a></p>
            <p>We can't wait to hear from you at <strong>Crossroads Farm</strong>!  If you are viewing our web site for the first time, or we are one of your  favorites, you are important to the mission that God has laid before us.  We value you.  We need you!</p>
            <p>Please don't hesitate to call, e-mail, or connect to us in anyway.  It is our pleasure to respond to your contact.  These are exciting days to be involved in the work of Crossroads Farm; allowing God to use us as a tool to transform the lives of rural youth.</p>

            <form action="" method="post">
                <xsl:for-each select="events/save-message">
                    <p class="{@result}">
                        <xsl:choose>
                            <xsl:when test="@result = 'success'">Email sent.</xsl:when>
                            <xsl:otherwise>The system encountered errors while sending your email. Please check if all the required fields have been filled.</xsl:otherwise>
                        </xsl:choose>
                    </p>
                </xsl:for-each>
                <fieldset>
                    <label class="required">Name<em>*</em> <input type="text" name="fields[name]" class="textfield" value="{events/save-message/post-values/name}" /></label>
                    <label class="required">Email<em>*</em> <input type="text" name="fields[email]" class="textfield" value="{events/save-message/post-values/email}" /></label>
                    <label class="required">Subject<em>*</em>
                        <xsl:choose>
                            <xsl:when test="events/save-message/post-values/subject">
                                <input type="text" name="fields[subject]" class="textfield" value="{events/save-message/post-values/subject}" />
                            </xsl:when>
                            <xsl:otherwise>
                                <input type="text" name="fields[subject]" class="textfield" value="" />
                            </xsl:otherwise>
                        </xsl:choose>
                    </label>
                    <label class="required">Message<em>*</em> <textarea name="fields[message]" rows="5" cols="21"><xsl:value-of select="events/save-message/post-values/message" /></textarea></label>

                    <input name="send-email[recipient]" value="contact" type="hidden" />
                    <input name="send-email[sender-email]" value="fields[email]" type="hidden" />
                    <input name="send-email[sender-name]" value="fields[name]" type="hidden" />
                    <input name="send-email[subject]" value="fields[subject]" type="hidden" />
                    <input name="send-email[body]" value="fields[message],fields[subject],fields[email],fields[name]" type="hidden" />

                    <input id="submit" src="/workspace/images/btn-send_message.gif" type="image" name="action[save-message]" value="Send" />
                </fieldset>
            </form>
        </div>
        <div id="column_right">
            <xsl:call-template name="col-right"/>
            <xsl:call-template name="ecfa"/>
        </div>

    </xsl:template>

</xsl:stylesheet>