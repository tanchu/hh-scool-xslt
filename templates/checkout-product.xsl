<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template name="checkout-product">
        <div class="column column_s-2 column_m-3 column_l-5">
            <div class="checkout__clothes">
                <xsl:apply-templates select="/doc/checkout-products/product" mode="checkout-product-item"/>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="/doc/checkout-products/product" mode="checkout-product-item">
        <div class="checkout__goods">
            <div class="product-card">
                <div class="product-card">
                    <div class="product-card__image-container">
                        <img class="product-card__image" src="{image}"/>
                        <xsl:apply-templates select="old-price" mode="sale"/>
                    </div>
                    <div class="product-card__name">
                        <xsl:value-of select="name"/>
                    </div>
                    <div class="product-card__price">
                        <xsl:apply-templates select="old-price" mode="product-card__old-price"/>
                        <xsl:value-of select="price"/>
                    </div>
                    <div class="checkout__description">
                        <xsl:value-of select="description"/>
                    </div>
                    <div class="checkout__button-group-container  checkout__size">
                        <xsl:apply-templates select="sizes/size" mode="product-size"/>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="old-price" mode="sale">
        <div class="product-card__sale checkout__sale">sale</div>
    </xsl:template>
    <xsl:template match="product/sizes" mode="product-sizes">
        <div class="product-card__sizes">
            <xsl:apply-templates select="size" mode="product-size"/>
        </div>
    </xsl:template>
    <xsl:template match="sizes/size" mode="product-size">
        <button class="button checkout__button-group">
            <xsl:value-of select="."/>
        </button>
    </xsl:template>
    <xsl:template match="old-price" mode="product-card__old-price">
        <span class="product-card__old-price">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>
</xsl:stylesheet>