<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="socialNetworks" mode="social-networks">
        <div class="column column_s-2 column_m-3 column_l-4">
            <div class="social-media-icons-container">
                <xsl:apply-templates select="link" mode="social-networks-link" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="socialNetworks/link" mode="social-networks-link">
        <div class="social-media-icons-container__item">
            <a href="{@url}">
                <img class="social-media-icon" src="{@iconSrc}" />
            </a>
        </div>
    </xsl:template>

</xsl:stylesheet>