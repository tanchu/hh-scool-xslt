<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="statisticalInformation" mode="footer-statistical">
        <div class="footer-info">
            <div class="columns-row">
                <div class="column column_s-2 column_m-6 column_l-12">
                    <div class="footer-info__copyright">
                        <xsl:text>&#169;</xsl:text>
                        <xsl:value-of select="./../copyRightYear"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="./../copyRightHeading"/>
                    </div>
                    <div class="footer-info__today">
                        <xsl:text>Сегодня на сайте </xsl:text>
                        <xsl:value-of select="countOfVacancies"/>
                        <xsl:text> вакансий, </xsl:text>
                        <xsl:value-of select="countOfResumes"/>
                        <xsl:text> резюме, </xsl:text>
                        <xsl:value-of select="countOfCompanies"/>
                        <xsl:text> компании и за неделю </xsl:text>
                        <xsl:value-of select="countOfInvitations"/>
                        <xsl:text> приглашения</xsl:text>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>