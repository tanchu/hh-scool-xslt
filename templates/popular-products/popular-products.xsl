<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../product/product-card-short.xsl"/>

    <xsl:template match="products" mode="popular-products">
        <section class="content-section">
            <div class="columns-wrapper">
                <h2 class="heading heading_level-2">Популярные товары</h2>
                    <div class="columns-row">
                        <xsl:apply-templates select="." mode="product-card-column"/>
                    </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="products/product" mode="product-card-column">
        <div class="column column_s-1 column_m-2 column_l-4">
            <xsl:apply-templates select="." mode="product-card-short"/>
        </div>
    </xsl:template>

</xsl:stylesheet>