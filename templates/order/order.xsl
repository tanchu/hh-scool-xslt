<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="order-form/contact-info.xsl"/>
    <xsl:import href="order-form/type-delivery.xsl"/>
    <xsl:import href="order-form/address.xsl"/>
    <xsl:import href="order-form/type-payment.xsl"/>
    <xsl:import href="order-form/type-notification.xsl"/>
    <xsl:import href="../product/product-card-full.xsl"/>
    <xsl:import href="../close.xsl"/>

    <xsl:template match="/doc" mode="order">
        <section class="popup-section">
            <div class="columns-wrapper">
                <div class="popup-header">
                    <h1 class="heading">Оформление заказа</h1>
                    <xsl:call-template name="close"/>
                </div>
                <div class="columns-row">
                    <div class="column column_s-2 column_m-3 column_l-6">
                        <form class="popup-content-form-order">
                            <div class="form-order-group">
                                <xsl:apply-templates select="login" mode="contact-info"/>
                            </div>
                            <div class="form-order-group">
                                <xsl:apply-templates select="delivery" mode="type-delivery"/>
                            </div>
                            <div class="form-order-group">
                                <xsl:apply-templates select="cities" mode="address"/>
                            </div>
                            <div class="form-order-group">
                                <xsl:apply-templates select="payment" mode="type-payment"/>
                            </div>
                            <div class="form-order-group">
                                <xsl:apply-templates select="notification" mode="type-notification"/>
                            </div>
                            <div class="form-order-group">
                                <button class="button form-order-confirm-button_button">Оформить заказ</button>
                            </div>
                        </form>
                    </div>
                    <div class="column column_s-2 column_m-3 column_l-6">
                        <div class="popup-content-order-product">
                            <xsl:apply-templates select="products/product[@id=4]" mode="product-card-full"/>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>

</xsl:stylesheet>