<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="product" mode="product-price">
        <div class="product-card__price">
            <xsl:if test="price/current/@sale=1">
                <span class="product-card__old-price">
                    <xsl:value-of select="price/default"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="key('key-currency', price/@val)"/>
                </span>
            </xsl:if>
            <xsl:value-of select="price/current"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="key('key-currency', price/@val)"/>
        </div>
    </xsl:template>

</xsl:stylesheet>