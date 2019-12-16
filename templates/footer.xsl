<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="common/logo/logo.xsl" />
    <xsl:import href="common/mobile-app/mobile-app.xsl" />
    <xsl:import href="common/social-networks/social-networks.xsl" />

    <xsl:template match="doc" mode="footer">
        <footer class="footer">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <xsl:apply-templates select="socialNetworks" mode="social-networks" />
                    <xsl:apply-templates select="mobileAppLinks" mode="mobile-app-links" />
                    <xsl:apply-templates select="logo" mode="footer-logo" />
                    <xsl:apply-templates select="." mode="footer-statistics" />
                </div>
            </div>
        </footer>
    </xsl:template>

    <xsl:template match="doc" mode="footer-statistics">
        <div class="column column_s-2 column_m-6 column_l-12">
            <div class="footer__info">
                <hr class="footer__line" />
                <div class="footer__statistics">
                    <xsl:apply-templates select="copyright" mode="copyright" />
                    <br />
                    <xsl:apply-templates select="statistics" mode="statistics" />
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="statistics" mode="statistics">
        <xsl:value-of select="." />
    </xsl:template>

    <xsl:template match="copyright" mode="copyright">
        <xsl:value-of select="." />
    </xsl:template>

</xsl:stylesheet>