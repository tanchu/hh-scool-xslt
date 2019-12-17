<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="product" mode="product-name-short">
        <div class="product-card__name"><xsl:value-of select="name"/></div>
    </xsl:template>

    <xsl:template match="product" mode="product-name-full">
        <div class="product-card__name product-card__name_full"><xsl:value-of select="name"/></div>
    </xsl:template>

</xsl:stylesheet>