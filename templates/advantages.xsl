<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="advantages" mode="advantages">
        <section class="advantages-section">
            <div class="columns-wrapper">
                <div class="columns-row">
                        <xsl:apply-templates select="item" mode="advantages-item" />
                    </div>
                </div>
        </section>
    </xsl:template>
    <xsl:template match="item" mode="advantages-item">
    <div class="column column_s-2 column_m-2 column_l-4">
        <div class="advantages-item">
            <xsl:if test="@type = 'delivery'">
                <div class="advantages-item__icon advantages-item__icon_delivery"></div>
            </xsl:if>
            <xsl:if test="@type = 'warranty'">
                <div class="advantages-item__icon advantages-item__icon_return"></div>
            </xsl:if>
            <xsl:if test="@type = 'support'">
                <div class="advantages-item__icon advantages-item__icon_support"></div>
            </xsl:if>
            <div class="advantages-item__text">
                <xsl:value-of select="." />
            </div>
        </div>
    </div>
    </xsl:template>
</xsl:stylesheet>