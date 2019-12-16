<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="sizes.xsl"/>

    <xsl:template match="product" mode="product-card-full">
        <xsl:variable name="sale" select="price/current/@sale"/>
        <div class="product-card">
            <div class="product-card__image-container">
                <img class="product-card__image" src="{image/@img}" alt="{name}"/>
                <xsl:if test="$sale=1">
                    <div class="product-card__sale product-card__sale_full">sale</div>
                </xsl:if>
            </div>
            <div class="product-card__name product-card__name_full"><xsl:value-of select="name"/></div>
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
            <div class="product-card__description"><xsl:value-of select="description"/></div>
            <div class="product-card__sizes">
                <xsl:apply-templates select="sizes" mode="sizes-item"/>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>

