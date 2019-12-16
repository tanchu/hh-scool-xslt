<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="mobileApps" mode="footer-mobile-apps-section">
        <div class="column column_s-2 column_m-3 column_l-4">
            <div class="footer__app">
                <div class="app"> 
                    <xsl:apply-templates select="mobileApp" mode="mobile-app-button"/>
                </div>
            </div>
        </div>
    </xsl:template>


    <xsl:template match="mobileApp" mode="mobile-app-button">
        <div class="app__button">
            <a href="{.}">
                <xsl:attribute name="class">
                    <xsl:text>app-button-icon app-button-icon_</xsl:text>
                    <xsl:value-of select="@name"/>
                </xsl:attribute>
            </a>
        </div>
    </xsl:template>

</xsl:stylesheet>



