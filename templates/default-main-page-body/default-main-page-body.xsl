<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="../top/top.xsl"/>
    <xsl:import href="services/services.xsl"/>
    <!--
    <xsl:import href="../header/header.xsl"/>
    <xsl:import href="slider-go-catalog/slider-go-catalog.xsl"/>
    <xsl:import href="popular-products/popular-products.xsl"/>
    <xsl:import href="../footer/footer.xsl"/>
    -->

    <xsl:template match="/doc" mode="default-main-page-body">
        <xsl:apply-templates select="." mode="top"/>
        <!--
        <xsl:apply-templates select="." mode="header"/>
        <xsl:apply-templates select="." mode="slider-go-catalog"/>
        <xsl:apply-templates select="." mode="popular-products"/>
        -->
        <xsl:apply-templates select="." mode="services"/>
        <!--
        <xsl:apply-templates select="." mode="footer"/>
        -->
    </xsl:template>
</xsl:stylesheet>