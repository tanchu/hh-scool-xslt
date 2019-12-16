<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/doc/products/product" mode="product-card-short">
        <div class="product-card">
            <div class="product-card__image-container">
                <img class="product-card__image" src="{image/@img}"/> //alt="{name}"/>
                <div class="product-card__sale">sale</div>
            </div>
            <div class="product-card__name">Футболка</div>
            <div class="product-card__price">
                <span class="product-card__old-price">690</span>
                390 ₽
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>

