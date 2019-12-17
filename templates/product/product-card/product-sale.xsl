<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="product" mode="product-sale-short">
        <div class="product-card__sale">sale</div>
    </xsl:template>

    <xsl:template match="product" mode="product-sale-full">
        <div class="product-card__sale product-card__sale_full">sale</div>
    </xsl:template>

</xsl:stylesheet>