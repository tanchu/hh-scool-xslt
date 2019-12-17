<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="closeButton" mode="close-button-form">
        <div class="close-button-form">
            <xsl:apply-templates select="." mode="close-button" />
        </div>
    </xsl:template>

    <xsl:template match="closeButton" mode="close-button-product">
        <div class="product-card__close-button">
            <xsl:apply-templates select="." mode="close-button" />
        </div>
    </xsl:template>

    <xsl:template match="closeButton" mode="close-button">
        <a href="#">
            <img class="close-button" src="{@src}" />
        </a>
    </xsl:template>

</xsl:stylesheet>