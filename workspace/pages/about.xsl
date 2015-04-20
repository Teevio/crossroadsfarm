<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../utilities/master.xsl"/>
    <xsl:import href="../utilities/ecfa.xsl"/>
    <xsl:import href="../utilities/col-right.xsl"/>
    <xsl:import href="../utilities/page-about.xsl"/>
    <xsl:import href="../utilities/page-staff.xsl"/>
    <xsl:import href="../utilities/people.xsl"/>
    <xsl:import href="../utilities/page-doctrine.xsl"/>
    
    <xsl:template match="data">
        <div id="column_left">
            <xsl:choose>
                <xsl:when test="$subpage = 'staff'">
                    <h3>Staff</h3>
                    <div id="coach-list">
                        <xsl:apply-templates select="people/section">
                            <xsl:with-param name="sectionType">staff</xsl:with-param>
                        </xsl:apply-templates>
                    </div>
                </xsl:when>
                <xsl:when test="$subpage = 'coaches'">
                    <h3>Coaches</h3>
                    <div id="coach-list">
                        <xsl:apply-templates select="people/section">
                            <xsl:with-param name="sectionType">coaches</xsl:with-param>
                        </xsl:apply-templates>
                    </div>
                </xsl:when>
                <xsl:when test="$subpage = 'crew'">
                    <h3>Crew</h3>
                    <div id="crew-list">
                        <xsl:apply-templates select="people/section">
                            <xsl:with-param name="sectionType">crew</xsl:with-param>
                        </xsl:apply-templates>
                    </div>

                </xsl:when>
                <xsl:when test="$subpage = 'board'">
                    <h3>Board Members</h3>
                    <div id="board-list">
                        <xsl:apply-templates select="people/section">
                            <xsl:with-param name="sectionType">board</xsl:with-param>
                        </xsl:apply-templates>
                    </div>
                </xsl:when>
                <xsl:when test="$subpage = 'doctrine'">
                    <xsl:call-template name="page-doctrine"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="page-about"/>                    
                </xsl:otherwise>
            </xsl:choose>
        </div>
        <div id="column_right">
            <xsl:call-template name="col-right"/>
            <xsl:call-template name="ecfa"/>
        </div>
    </xsl:template>

</xsl:stylesheet>
