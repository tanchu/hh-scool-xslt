<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="socials" mode="footer-socials" >
        <div class="column column_s-2 column_m-3 column_l-4">
            <div class="social">
                <xsl:apply-templates select="social" mode="footer-social" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="social" mode="footer-social" >
        <a href="{@url}" class="social__link" target="_blank">
            <img>
                <xsl:attribute name="src" >
                    <xsl:value-of select="image/@src" />
                </xsl:attribute>
                <xsl:attribute name="alt" >
                    <xsl:value-of select="image/@alt" />
                </xsl:attribute>
            </img>
        </a>
    </xsl:template>

</xsl:stylesheet>