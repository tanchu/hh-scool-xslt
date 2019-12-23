<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template name="footer">
        <footer class="footer">
            <div class="columns-wrapper">
                <div class="footer-links">
                    <div class="columns-row">
                        <xsl:apply-templates select="socials" mode="footer-socials"/>
                        <xsl:apply-templates select="mobileApps" mode="footer-mobile"/>
                        <xsl:call-template name="footer-logo"/>
                    </div>
                </div>
                <xsl:apply-templates select="/doc" mode="footer-statistical"/>
            </div>
        </footer>
    </xsl:template>
</xsl:stylesheet>