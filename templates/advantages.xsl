<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="advantages" mode="advantages">
        <section class="advantages-section">
            <div class="columns-wrapper">
                <div class="columns-row">
                        <xsl:apply-templates select="advantage" mode="advantages-item"/>
                    </div>
                </div>
        </section>
    </xsl:template>
    <xsl:template match="advantage" mode="advantages-item">
    <div class="column column_s-2 column_m-2 column_l-4">
        <div class="advantages-item">
            <xsl:apply-templates select="self::node()[@type = 'delivery']" mode="advantage-delivery"/>
            <xsl:apply-templates select="self::node()[@type = 'return']" mode="advantage-return"/>
            <xsl:apply-templates select="self::node()[@type = 'support']" mode="advantage-support"/>
            <div class="advantages-item__text">
                <xsl:value-of select="."/>
            </div>
        </div>
    </div>
    </xsl:template>
    <xsl:template match="advantage" mode="advantage-delivery">
        <div class="advantages-item__icon advantages-item__icon_delivery"/>
    </xsl:template>
    <xsl:template match="advantage" mode="advantage-return">
        <div class="advantages-item__icon advantages-item__icon_return"/>
    </xsl:template>
    <xsl:template match="advantage" mode="advantage-support">
        <div class="advantages-item__icon advantages-item__icon_support"/>
    </xsl:template>
</xsl:stylesheet>