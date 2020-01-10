<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="head.xsl"/>
    <xsl:import href="header.xsl"/>
    <xsl:import href="additional-information-items.xsl"/>
    <xsl:import href="slider.xsl"/>
    <xsl:import href="footer.xsl"/>
    <xsl:import href="product-card.xsl"/>
    <xsl:import href="customer-support.xsl"/>
    <xsl:import href="checkout.xsl"/>
    <xsl:template match="/doc" mode="body">
        <body>
            <xsl:apply-templates select="navigation" mode="additional-information-items"/>
            <xsl:apply-templates select="/doc" mode="header"/>
            <xsl:apply-templates select="sliders" mode="slider"/>
            <selection class="content-section">
                <xsl:apply-templates select="products" mode="product-card"/>
                <xsl:apply-templates select="customer-support" mode="customer-support"/>
                <xsl:apply-templates select="/doc" mode="footer"/>
            </selection>
            <xsl:call-template name="checkout"/>
        </body>
    </xsl:template>
</xsl:stylesheet> 