<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="socials/socials.xsl"/>
    <xsl:import href="apps/apps.xsl"/>
    <xsl:import href="copyright/copyright.xsl"/>
    <xsl:import href="stats/stats.xsl"/>
    <xsl:import href="second-logo/second-logo.xsl"/>

    <xsl:template match="/doc" mode="footer">
        <footer class="footer">
            <div class="columns-wrapper">
                <div class="footer-content">
                    <div class="footer-content-social-app-logo">
                        <div class="columns-row">
                            <div class="column column_s-2 column_m-3 column_l-4">
                               <xsl:apply-templates select="socials" mode="socials"/>
                            </div>
                            <div class="column column_s-2 column_m-3 column_l-4">
                                <xsl:apply-templates select="apps" mode="apps"/>
                            </div>
                            <div class="column column_s-2 column_m-3 column_l-4">
                                <xsl:apply-templates select="logo/second" mode="second-logo"/>
                            </div>
                        </div>
                    </div>
                    <div class="footer-content__line"></div>
                    <xsl:apply-templates select="currentYear" mode="copyright"/>
                    <xsl:apply-templates select="stats" mode="stats"/>
                </div>
            </div>
        </footer>
    </xsl:template>
</xsl:stylesheet>