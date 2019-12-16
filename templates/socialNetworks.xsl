<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="socialNetworks" mode="footer-social-networks-section">
        <div class="column column_s-2 column_m-3 column_l-4">
            <div class="footer__social">
                <div class="social">
                    <xsl:apply-templates select="socialNetwork" mode="social-network-button"/>
                </div>
            </div>
        </div>
    </xsl:template>


    <xsl:template match="socialNetwork" mode="social-network-button">
        <div class="social__button">
            <a href="{.}">
                <xsl:attribute name="class">
                    <xsl:text>social-button-icon social-button-icon_</xsl:text>
                    <xsl:value-of select="@name"/>
                </xsl:attribute>
            </a>
        </div>
    </xsl:template>

</xsl:stylesheet>



