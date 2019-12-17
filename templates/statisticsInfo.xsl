<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="statisticsInfo" mode="footer-statistics-info-section">
        <div class="columns-row">
            <div class="column column_s-2 column_m-5 column_l-12">
                <div class="copyright-info">
                    <xsl:text>&#169; </xsl:text>
                    <span class="copyright-info__year">
                        <xsl:value-of select="/doc/copyRightYear"/>
                    </span>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="/doc/copyRightHeading"/>
                </div>
                <div class="statistics-info">
                    <xsl:text>Сегодня на сайте </xsl:text>
                    <xsl:value-of select="numOfVacancies"/>
                    <xsl:text> вакансий, </xsl:text>
                    <xsl:value-of select="numOfResumes"/>
                    <xsl:text> резюме, </xsl:text>
                    <xsl:value-of select="numOfCompanies"/>
                    <xsl:text> компании и за неделю </xsl:text>
                    <xsl:value-of select="numOfInvitations"/>
                    <xsl:text> приглашения</xsl:text>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>



