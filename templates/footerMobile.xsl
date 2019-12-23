<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="mobileApps" mode="footer-mobile">
        <div class="column column_s-2 column_m-3 column_l-4">
            <div class="apps">
                <xsl:apply-templates select="mobileApp" mode="footer-mobile-app"/>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="mobileApp" mode="footer-mobile-app">
        <a href="{@url}" class="apps__link" target="_blank">
            <img src="{image/@src}" alt="{image/@alt}"/>
        </a>
    </xsl:template>
</xsl:stylesheet>