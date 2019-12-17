<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="product" mode="product-description">
        <div class="product-card__description"><xsl:value-of select="description"/></div>
    </xsl:template>

</xsl:stylesheet>