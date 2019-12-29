<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="products" mode="product-card">
        <div class="columns-wrapper">
            <h2 class="heading heading_level-2">Популярные товары</h2>
            <div class="columns-row">
                <xsl:apply-templates select="product" mode="product-card-item"/>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="product" mode="product-card-item">
        <div class="column column_s-1 column_m-2 column_l-4">
            <div class="product-card">
                <div class="product-card">
                    <div class="product-card__image-container">
                        <img class="product-card__image" src="{image}"/>
                        <xsl:apply-templates select="old-price" mode="sale"/>
                    </div>
                    <div class="product-card__name">
                        <xsl:value-of select="name" />
                    </div>
                    <div class="product-card__price">
                        <xsl:apply-templates select="old-price" mode="product-card__old-price"/>
                        <xsl:value-of select="price"/>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="old-price" mode="sale">
        <div class="product-card__sale">sale</div>
    </xsl:template>

    <xsl:template match="old-price" mode="product-card__old-price">
        <span class="product-card__old-price">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

</xsl:stylesheet>