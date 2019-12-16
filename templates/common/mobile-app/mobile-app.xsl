<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="mobileAppLinks" mode="mobile-app-links">
        <div class="column column_s-2 column_m-3 column_l-4">
            <div class="app-store-icons-container">
                <xsl:apply-templates select="link" mode="mobile-app-link" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="mobileAppLinks/link" mode="mobile-app-link">
        <div class="app-store-icons-container__item">
            <a href="{@url}">
                <img class="app-store-icon" src="{@iconSrc}" />
            </a>
        </div>
    </xsl:template>

</xsl:stylesheet>