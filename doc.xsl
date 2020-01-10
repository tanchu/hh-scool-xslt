<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="templates/common/select/select.xsl" />
    <xsl:import href="templates/common/close-button/close-button.xsl" />
    <xsl:import href="templates/common/logo/logo.xsl" />
    <xsl:import href="templates/common/checkboxes/checkboxes.xsl" />
    <xsl:import href="templates/common/radio-buttons/radio-buttons.xsl" />
    <xsl:import href="templates/common/mobile-app/mobile-app.xsl" />
    <xsl:import href="templates/head.xsl" />
    <xsl:import href="templates/how-we-work.xsl" />
    <xsl:import href="templates/page-navigation/page-navigation.xsl" />
    <xsl:import href="templates/slider.xsl" />
    <xsl:import href="templates/header.xsl" />
    <xsl:import href="templates/footer.xsl" />
    <xsl:import href="templates/product.xsl" />
    <xsl:import href="templates/order-form.xsl" />

    <xsl:output method="html" 
                encoding = "utf-8" />

    <xsl:template match="doc">
        <html>
            <xsl:attribute name="lang">
                <xsl:value-of select="documentLanguage" />
            </xsl:attribute>
            <head>
                <xsl:call-template name="head" />
            </head>
            <body>
                <xsl:apply-templates select="." mode="order-form" />
                <xsl:apply-templates select="." mode="order-popup" />
                <xsl:apply-templates select="." mode="navbar-section" />
                <xsl:apply-templates select="." mode="header" />
                <xsl:apply-templates select="slider" mode="slider" />
                <xsl:apply-templates select="popularProducts" mode="popular-products" />
                <xsl:apply-templates select="howWeWork" mode="how-we-work" />
                <xsl:apply-templates select="." mode="footer" />
                <script src="js/index.js"></script>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="doc" mode="order-popup">
        <div class="popup-wrapper">
            <div class="product-card-wrapper">
                <xsl:apply-templates select="product" mode="ordered-product" />
                <button class="button button__long default-button">Заказать</button>
            </div>
        </div>
    </xsl:template>

    
</xsl:stylesheet>