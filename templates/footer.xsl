<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="footer">
        <footer class="footer">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <xsl:apply-templates select="socialNetworks" mode="footer-social-networks-section"/>
                    <div class="footer__fill"></div>
                    <xsl:apply-templates select="mobileApps" mode="footer-mobile-apps-section"/>
                    <div class="column column_s-2 column_m-2 column_l-4">
                        <div class="footer__logo logo">
                            <a href="#" class="logo-link">
                                <img class="logo" src="css/logo-dark.2d96f65b.svg" alt="hh.ru">
                                </img>
                            </a>
                        </div>
                    </div>
                </div>
                <hr class="footer__line"></hr>
                <xsl:apply-templates select="statisticsInfo" mode="footer-statistics-info-section"/>
            </div>
        </footer>
    </xsl:template>

</xsl:stylesheet>

