<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="statisticsInfo" mode="footer-statistics-info-section">
        <div class="columns-row">
            <div class="column column_s-2 column_m-5 column_l-12">
                <div class="copyright-info">
                    <xsl:text>&#169;&#160;</xsl:text>
                    <span class="copyright-info__year">
                        <xsl:value-of select="/doc/copyRightYear"/>
                    </span>
                    <xsl:text>&#160;</xsl:text>
                    <xsl:value-of select="/doc/copyRightHeading"/>
                </div>
                <div class="statistics-info">
                    <xsl:text>Сегодня на сайте </xsl:text>
                    <xsl:apply-templates select="numOfVacancies" mode="declination-vacancy-company">
                        <xsl:with-param name="wordBase" select="numOfVacancies/@wordBase"/>
                    </xsl:apply-templates>
                    <xsl:text>, </xsl:text>
                    <xsl:apply-templates select="numOfResumes" mode="declination-resume"/>
                    <xsl:text>, </xsl:text>
                    <xsl:apply-templates select="numOfCompanies" mode="declination-vacancy-company">
                        <xsl:with-param name="wordBase" select="numOfCompanies/@wordBase"/>
                    </xsl:apply-templates>
                    <xsl:text> и за неделю </xsl:text>
                    <xsl:apply-templates select="numOfInvitations" mode="declination-invitation">
                        <xsl:with-param name="wordBase" select="numOfInvitations/@wordBase"/>
                    </xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>



