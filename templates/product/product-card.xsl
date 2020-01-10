<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="product" mode="product-card">
        <div class="product-card">
            <div class="product-card__image-container">
                <xsl:apply-templates select="." mode="product-image"/>
                <xsl:apply-templates select="price" mode="product-sale"/>
            </div>
            <xsl:apply-templates select="name" mode="product-name"/>
            <xsl:apply-templates select="price" mode="product-price"/>
            <xsl:apply-templates select="description" mode="product-description"/>
            <xsl:apply-templates select="sizes" mode="product-sizes"/>
        </div>
    </xsl:template>

    <xsl:template match="product" mode="product-image">
        <img class="product-card__image" src="{image}" alt="{name}"/>
    </xsl:template>

    <!--отрисовка знака "sale", если есть старая цена-->
    <xsl:template match="price[oldValue]" mode="product-sale">
        <div class="product-card__sale product-card__sale_full">sale</div>
    </xsl:template>

    <xsl:template match="price" mode="product-sale"/>

    <xsl:template match="name" mode="product-name">
        <div class="product-card__name product-card__name_full"><xsl:value-of select="."/></div>
    </xsl:template>

    <xsl:template match="price" mode="product-price">
        <div class="product-card__price">
            <xsl:apply-templates select="." mode="product-old-price"/>
            <xsl:apply-templates select="." mode="product-price-value">
                <xsl:with-param name="priceValue" select="value"/>
            </xsl:apply-templates>
        </div>
    </xsl:template>

    <!--вывод старой цены, если она есть-->
    <xsl:template match="price[oldValue]" mode="product-old-price">
        <span class="product-card__old-price">
            <xsl:apply-templates select="." mode="product-price-value">
                <xsl:with-param name="priceValue" select="oldValue"/>
            </xsl:apply-templates>
        </span>
    </xsl:template>

    <xsl:template match="price" mode="product-old-price"/>

    <!--вывод значения цены (старой или текущей в зависимости от параметра)-->
    <xsl:template match="price" mode="product-price-value">
        <xsl:param name="priceValue" />
        <xsl:value-of select="$priceValue" />
        <xsl:text> </xsl:text>
        <xsl:value-of select="key('key-currency', curr)"/>
    </xsl:template>

    <xsl:template match="description" mode="product-description">
        <div class="product-card__description"><xsl:value-of select="."/></div>
    </xsl:template>

    <xsl:template match="sizes" mode="product-sizes">
        <div class="product-card__sizes">
            <xsl:apply-templates select="size" mode="sizes-item"/>
        </div>
    </xsl:template>

    <xsl:template match="size" mode="sizes-item">
        <input type="radio" id="{@label}" name="sizes"/>
        <div class="radio-button-text radio-button-text_size">
            <label for="{@label}">
                <xsl:value-of select="."/>
            </label>
        </div>
    </xsl:template>

</xsl:stylesheet>

