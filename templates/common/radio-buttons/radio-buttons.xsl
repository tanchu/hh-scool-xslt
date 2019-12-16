<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="deliveryMethods" mode="order-form-delivery-methods">
        <fieldset class="order-form__section">
            <legend class="order-form__legend">Способ получения</legend>
            <div class="order-form__delivery-way-radio-wrapper">
                <xsl:apply-templates select="point" mode="delivery-methods-point" />
            </div>
        </fieldset>
    </xsl:template>

    <xsl:template match="deliveryMethods/point" mode="delivery-methods-point">
        <div class="order-form__delivery-way-item">
            <label class="radio-box">
                <input class="radio-box__input" type="radio" name="delivery-way" />
                <span class="radio-box__text">
                    <xsl:value-of select="." />
                </span>
            </label>
        </div>
    </xsl:template>

    <xsl:template match="paymentMethods" mode="order-form-payment-methods">
        <fieldset class="order-form__section">
            <legend class="order-form__legend">Оплата</legend>
            <xsl:apply-templates select="." mode="payment-methods" />
        </fieldset>
    </xsl:template>

    <xsl:template match="paymentMethods" mode="payment-methods">
        <div class="radio-wrapper">
            <xsl:apply-templates select="point" mode="payment-methods-point" />
        </div>
    </xsl:template>

    <xsl:template match="paymentMethods/point" mode="payment-methods-point">
        <label for="{@type}" class="radio">
            <input type="radio" name="pay" id="{@type}" class="radio__input" />
            <span class="radio__box"></span>
            <span class="radio__text">
                <xsl:value-of select="." />
            </span>
        </label>
    </xsl:template>

</xsl:stylesheet>