<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../top-main-menu/top-main-menu.xsl"/>
    <xsl:import href="slider/slider-to-catalog/slider-to-catalog.xsl"/>
    <xsl:import href="services/services.xsl"/>
    <xsl:import href="../footer/footer.xsl"/>
    <xsl:import href="popular-products/popular-products.xsl"/>
    <xsl:import href="../header/header.xsl"/>

    <xsl:template match="/doc" mode="body">
        <xsl:apply-templates select="." mode="top-main-menu"/>
        <xsl:apply-templates select="." mode="header"/>
        <xsl:apply-templates select="slider/sliderToCatalog" mode="slider-to-catalog"/>
        <!--
        <xsl:apply-templates select="." mode="popular-products"/>
        -->
        <xsl:apply-templates select="services" mode="services"/>
        <xsl:apply-templates select="." mode="footer"/>

    </xsl:template>
</xsl:stylesheet>