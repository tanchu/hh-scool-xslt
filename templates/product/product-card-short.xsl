<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="product" mode="product-card-short">
        <xsl:variable name="sale" select="price/current/@sale"/>
        <div class="product-card">
            <div class="product-card__image-container">
                <img class="product-card__image" src="{image/@img}" alt="{name}"/>
                <xsl:if test="$sale=1">
                    <div class="product-card__sale">sale</div>
                </xsl:if>
            </div>
            <div class="product-card__name"><xsl:value-of select="name"/></div>
            <div class="product-card__price">
                <xsl:if test="$sale=1">
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
        </div>
    </xsl:template>

</xsl:stylesheet>

