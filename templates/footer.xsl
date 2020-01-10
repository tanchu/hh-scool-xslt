<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="social.xsl"/>
    <xsl:import href="download.xsl"/>
    <xsl:template match="doc" mode="footer">
        <footer class="footer">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="column column_s-2 column_m-3 column_l-4">
                        <xsl:apply-templates select="socials" mode="social"/>
                    </div>
                    <div class="column column_s-2 column_m-3 column_l-4">
                        <xsl:apply-templates select="download-application" mode="download"/>
                    </div>
                    <div class="column column_l-4">
                        <div class="footer__hh">
                            <a href="#" class="logo-link">
                                <img class="logo" src="css/blocks/footer/hh.svg" alt="hh.ru"/>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="footer-content__line"></div>
                <xsl:apply-templates select="statistics" mode="statistics"/>
            </div>
        </footer>
    </xsl:template>

    <xsl:template match="statistics" mode="statistics">
        <div class="footer__text">
            <xsl:text>© </xsl:text>
            <xsl:value-of select="year"/>
            Группа команий HeadHunter Сегодня на сайте 
            <xsl:value-of select="vacancy"/>
            <xsl:text>вакансий,</xsl:text>
            <xsl:value-of select="resume"/>
            <xsl:text> резюме,</xsl:text>
            <xsl:value-of select="company"/>
            <xsl:text>компании и за неделю</xsl:text>
            <xsl:value-of select="invite"/>
            <xsl:text>приглашения</xsl:text>
        </div>
    </xsl:template>

    <xsl:template math="statistics" mode="text">

    </xsl:template>

</xsl:stylesheet>

        