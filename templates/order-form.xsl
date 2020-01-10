<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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
                    <xsl:apply-templates select="product" mode="ordered-product-form" />
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