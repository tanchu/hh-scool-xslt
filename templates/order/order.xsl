<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../close.xsl"/>
    <xsl:import href="../product/product-card.xsl"/>

    <xsl:template match="/doc" mode="order">
        <section class="popup-section">
            <div class="columns-wrapper">
                <div class="popup-header">
                    <h1 class="heading">Оформление заказа</h1>
                    <!-- <xsl:call-template name="close"/> -->
                </div>
                <div class="columns-row">
                    <div class="column column_s-2 column_m-3 column_l-6">
                        <form class="popup-content-form-order">
                            <div class="form-order-group">
                                <xsl:apply-templates select="." mode="contact-info"/>
                            </div>
                            <div class="form-order-group">
                                <xsl:apply-templates select="delivery" mode="delivery"/>
                            </div>
                            <div class="form-order-group">
                                <xsl:apply-templates select="cities" mode="address"/>
                            </div>
                            <div class="form-order-group">
                                <xsl:apply-templates select="payment" mode="payment"/>
                            </div>
                            <div class="form-order-group">
                                <xsl:apply-templates select="notification" mode="notification"/>
                            </div>
                            <div class="form-order-group">
                                <button class="button form-order-confirm-button_button">Оформить заказ</button>
                            </div>
                        </form>
                    </div>
                    <div class="column column_s-2 column_m-3 column_l-6">
                        <div class="popup-content-order-product">
                            <xsl:apply-templates select="products/product[@id=4]" mode="product-card"/>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="/doc" mode="contact-info">
        <label class="form-order__label">Контактное лицо</label>
        <input class="input" type="text" placeholder="ФИО">
            <xsl:attribute name="value">
                <xsl:apply-templates select="account" mode="name"/>
            </xsl:attribute>
        </input>
        <input class="input" type="text" placeholder="Электронная почта">
            <xsl:attribute name="value">
                <xsl:value-of select="account/email"/>
            </xsl:attribute>
        </input>
        <div class="form-order-contact-info-number">
            <input class="input form-order-contact-info-number_number-7" type="text" placeholder="+7">
                <xsl:attribute name="value">
                    <xsl:value-of select="account/phoneNumber/codeCountry"/>
                </xsl:attribute>
            </input>
            <input class="input form-order-contact-info-number_number-code" type="text" placeholder="Код">
                <xsl:attribute name="value">
                    <xsl:value-of select="account/phoneNumber/code"/>
                </xsl:attribute>
            </input>
            <input class="input form-order-contact-info-number_number-number" type="text" placeholder="Номер">
                <xsl:attribute name="value">
                    <xsl:value-of select="account/phoneNumber/number"/>
                </xsl:attribute>
            </input>
        </div>
    </xsl:template>

    <xsl:template match="account" mode="name">
        <xsl:value-of select="surname"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="name"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="patronymic"/>
    </xsl:template>

    <xsl:template match="delivery" mode="delivery">
        <label class="form-order__label">Способ получения заказа</label>
        <div class="group-buttons">
            <xsl:apply-templates select="type" mode="delivery-item"/>
        </div>
    </xsl:template>

    <xsl:template match="type" mode="delivery-item">
        <input type="radio" id="{@label}" name="type-delivery"/>
        <div class="radio-button-text radio-button-text_delivery">
            <label for="{@label}">
                <xsl:value-of select="."/>
            </label>
        </div>
    </xsl:template>

    <xsl:template match="cities" mode="address">
        <label class="form-order__label">Адрес</label>
        <div class="form-order-address-list">
            <div class="select-wrapper">
                <select class="select">
                    <xsl:apply-templates select="item" mode="cities-item"/>
                </select>
            </div>
        </div>
        <div class="form-order-address-text">
            <textarea class="textarea" placeholder="Адрес"></textarea>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="cities-item">
        <option class="option">
            <xsl:value-of select="."/>
        </option>
    </xsl:template>

    <xsl:template match="payment" mode="payment">
        <label class="form-order__label">Оплата</label>
        <div class="form-order-radio-group">
            <xsl:apply-templates select="type" mode="payment-item"/>
        </div>
    </xsl:template>

    <xsl:template match="type" mode="payment-item">
        <div class="form-order-radio-group__element">
            <input type="radio" name="payment" id="{@label}"/>
            <label class="form-order__text" for="{@label}">
                <xsl:value-of select="."/>
            </label>
        </div>
    </xsl:template>

    <xsl:template match="notification" mode="notification">
        <label class="form-order__label">Уведомления</label>
        <div class="form-order-notice-checkbox-sms">
            <xsl:apply-templates select="type" mode="notification-item"/>
        </div>
    </xsl:template>

    <xsl:template match="type" mode="notification-item">
        <input type="checkbox" id="{@label}"/>
        <label class="form-order__text" for="{@label}">
            <xsl:value-of select="."/>
        </label>
    </xsl:template>

</xsl:stylesheet>