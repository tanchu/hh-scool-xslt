<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="top-section/top-section.xsl"/>
    <xsl:import href="header/header.xsl"/>
    <xsl:import href="sliders/main-slider.xsl"/>
    <xsl:import href="popular-products/popular-products.xsl"/>
    <xsl:import href="services/services.xsl"/>
    <xsl:import href="footer/footer.xsl"/>
    <xsl:import href="keys.xsl"/>

    <xsl:template match="/doc" mode="index-body">
        <xsl:apply-templates select="." mode="top-section"/>
        <xsl:apply-templates select="." mode="header"/>
        <xsl:apply-templates select="sliders/mainSlider" mode="main-slider"/>
        <xsl:apply-templates select="products" mode="popular-products"/>
        <xsl:apply-templates select="services" mode="services"/>
        <xsl:apply-templates select="." mode="footer"/>
    </xsl:template>

</xsl:stylesheet>