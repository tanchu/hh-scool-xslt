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
    
    <xsl:output method="html" 
                encoding = "utf-8" />

    <xsl:template match="doc">       
        <html>
            <xsl:attribute name="lang">
                <xsl:value-of select="language" />
            </xsl:attribute>
            <head>
                <xsl:call-template name="head" />
            </head>
            <body>
                <div class="main-container">
                    <xsl:apply-templates select="." mode="order-form" />
                    <xsl:apply-templates select="." mode="order-popup" />
                    <xsl:apply-templates select="." mode="navbar-section" />
                    <xsl:apply-templates select="." mode="header" />
                    <xsl:apply-templates select="slider" mode="slider" />
                    <xsl:apply-templates select="popularProducts" mode="popular-products" />
                    <xsl:apply-templates select="howWeWork" mode="how-we-work" />
                    <xsl:apply-templates select="." mode="footer" />
                </div>
                <script src="js/index.js"></script>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="doc" mode="order-popup">
        <div class="popup-wrapper">
            <div class="product-card-wrapper">
                <xsl:apply-templates select="orderedProduct" mode="ordered-product" />
                <button class="button button__long default-button">Заказать</button>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="doc" mode="order-form">
        <form class="order-form">
            <div class="columns-wrapper">
                <xsl:call-template name="close-button-form" />
                <div class="columns-row">
                    <div class="column column_s-2 column_m-3 column_l-7">
                        <h1 class="heading">Оформление заказа</h1>
                        <xsl:call-template name="order-form-client-data" />
                        <xsl:apply-templates select="deliveryMethods" mode="order-form-delivery-methods" />
                        <xsl:apply-templates select="sities" mode="order-form-adress" />
                        <xsl:apply-templates select="paymentMethods" mode="order-form-payment-methods" />
                        <xsl:call-template name="order-form-notifications" />
                        <button class="button button__long default-button">Оформить заказ</button>
                    </div>
                    <xsl:apply-templates select="orderedProduct" mode="ordered-product-form" />
                </div>
            </div>
        </form>
    </xsl:template>

    <xsl:template name="order-form-client-data">
        <fieldset class="order-form__section">
            <legend class="order-form__legend">Контактное лицо</legend>
            <input class="input" type="text" name="username" placeholder="ФИО" />
            <input class="input" type="email" name="email" placeholder="Электронная почта" />
            <xsl:call-template name="telephone-field" />
        </fieldset>
    </xsl:template>
</xsl:stylesheet>