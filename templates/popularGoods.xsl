<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="popularGoods" mode="popular-goods-section">
        <section class="content-section">
            <div class="columns-wrapper">
                <h2 class="heading heading_level-2">Популярные товары</h2>
                <div class="columns-row">
                    <xsl:apply-templates select="item" mode="popular-goods-section-item"/>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="item" mode="popular-goods-section-item">
        <div class="column column_s-1 column_m-2 column_l-4">
            <div class="product-card">
                <div class="product-card__image-container">
                    <img class="product-card__image">
                        <xsl:attribute name="src">
                            <xsl:value-of select="image/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="title"/>
                        </xsl:attribute>
                    </img>
                    <xsl:apply-templates select="self::node()[@sale='true']" mode="goods-item-sale-icon"/>
                </div>
                <div class="product-card__name">
                    <xsl:value-of select="title"/>
                </div>
                <xsl:apply-templates select="self::node()[@sale='true']" mode="goods-item-sale-price"/>
                <xsl:apply-templates select="self::node()[@sale='false']" mode="goods-item-normal-price"/>

            </div>
        </div>
    </xsl:template>

    <xsl:template match="item[@sale='true']" mode="goods-item-sale-icon">
        <div class="product-card__sale">sale</div>
    </xsl:template>

    <xsl:template match="item" mode="goods-item-sale-price">

        <div class="product-card__price">
            <div class="product-card__old-price">
                <xsl:value-of select="price"/>
            </div>
            <xsl:value-of select="salePrice"/>
        </div>
    </xsl:template>


    <xsl:template match="item" mode="goods-item-normal-price">

        <div class="product-card__price">
            <xsl:value-of select="price"/>
        </div>
    </xsl:template>

</xsl:stylesheet>


