<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="popularGoods" mode="popular-goods-section">
        <section class="content-section">
            <div class="columns-wrapper">
                <h2 class="heading heading_level-2">Популярные товары</h2>
                <div class="columns-row">
                    <xsl:apply-templates select="item" mode="product-card-item-popular-goods-section"/>
                </div>
            </div>
        </section>
    </xsl:template>


</xsl:stylesheet>


