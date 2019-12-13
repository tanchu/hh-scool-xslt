<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="footer">
        <footer class="footer">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <xsl:apply-templates select="socialNetworks" mode="footer-social-networks-section"/>
                    <div class="footer__fill"></div>
                </div>
            </div>
        </footer>
    </xsl:template>

</xsl:stylesheet>

