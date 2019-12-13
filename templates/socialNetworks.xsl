<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="socialNetworks" mode="footer-social-networks-section">
        <div class="footer__social social">
            <xsl:apply-templates select="socialNetwork" mode="social-network-button"/>
        </div>
    </xsl:template>


    <xsl:template match="socialNetwork" mode="social-network-button">
        <div class="social__button">
            <a>
                <xsl:attribute name="class">
                    <xsl:text>social-button-icon social-button-icon_</xsl:text>
                    <xsl:value-of select="@name"/>
                </xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </a>
        </div>
    </xsl:template>

</xsl:stylesheet>



