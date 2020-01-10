<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../product/product-card.xsl"/>

    <xsl:template match="products" mode="popular-products">
        <section class="content-section">
            <div class="columns-wrapper">
            <h2 class="heading heading_level-2">Популярные товары</h2>
                <div class="columns-row">
                    <xsl:apply-templates select="product" mode="product-card-column"/>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="product" mode="product-card-column">
        <div class="column column_s-1 column_m-2 column_l-4">
            <xsl:apply-templates select="." mode="product-card"/>
        </div>
    </xsl:template>

    <!--переопределение шаблонов-->
    <xsl:template match="name" mode="product-name">
        <div class="product-card__name">
            <xsl:value-of select="."/>
        </div>
    </xsl:template>

    <xsl:template match="price[oldValue]" mode="product-sale">
        <div class="product-card__sale">sale</div>
    </xsl:template>

    <xsl:template match="description" mode="product-description"/>

    <xsl:template match="sizes" mode="product-sizes"/>

</xsl:stylesheet>