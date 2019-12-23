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
                        <xsl:apply-templates select="download" mode="download"/>
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
                <div class="footer__text">
                    <xsl:value-of select="footer-text"/>
                </div>
            </div>
        </footer>
    </xsl:template>
</xsl:stylesheet>

        