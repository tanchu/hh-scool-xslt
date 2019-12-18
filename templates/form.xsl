<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="form">
        <section>
            <form class="form" action="/" method="post">
                <div class="columns-wrapper">
                    <div class="form__button-close">
                        <button class="button-close-icon button-close">
                            Закрыть
                        </button>
                    </div>
                    <div class="columns-row">
                        <div class="column column_s-2 column_m-3 column_l-7">

                            <div class="form__section">
                                <xsl:call-template name="form-contacts"/>
                            </div>

                            <div class="form__section">
                                <h4 class="heading heading_level-4">Способ получения заказа</h4>
                                <div class="form__delivery-method">
                                    <xsl:apply-templates select="/doc/delivery/deliveryMethods/deliveryMethod" mode="form-delivery-method-radio-button"/>
                                </div>
                            </div>

                            <div class="form__section">
                                <div class="form__delivery-address">
                                    <h4 class="heading heading_level-4">Адрес</h4>
                                    <div class="select">

                                        <select class="select__select-field" name="cityLocataion" value="">
                                            <xsl:attribute name="size">
                                                <xsl:value-of select="/doc/delivery/cityLocation/@size"/>
                                            </xsl:attribute>
                                            <xsl:apply-templates select="/doc/delivery/cityLocation/city" mode="form-delivery-availible-cities"/>
                                        </select>
                                    </div>
                                    <div class="form__textarea">
                                        <textarea type="textarea" class="textarea" placeholder="Адрес" name="addressExpaned"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="form__section">
                                <div class="form__payment-methods">
                                    <h4 class="heading heading_level-4">Оплата</h4>
                                    <xsl:apply-templates select="/doc/payment/paymentMethods/paymentMethod" mode="form-payment-method"/>
                                </div>
                            </div>

                            <div class="form__section">
                                <div class="form__notification">
                                    <h4 class="heading heading_level-4">Уведомления</h4>
                                    <xsl:apply-templates select="/doc/notification/notificationMethods/notificationMethod" mode="form-notification-method"/>
                                </div>
                            </div>

                            <input class="button-submit form__button-submit" type="submit" value="Оформить заказ"></input>

                        </div>

                        <div class="column column_s-2 column_m-3 column_l-5">
                            <div class="form__product-card">
                                <xsl:apply-templates select="/doc/popularGoods/item[4]" mode="product-card-item-form-section"/>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </section>
    </xsl:template>

    <xsl:template name="form-contacts">
        <div class="form__input-main-contacts">
            <h1 class="heading heading_level-1">Оформление заказа</h1>
            <h4 class="heading heading_level-4">Контактное лицо</h4>
            <input class="form__input-text input-text" type="text" name="fullName" placeholder="ФИО" value="">
            </input>
            <input class="form__input-text input-text" type="text" name="email" placeholder="Электронная почта" value="">
            </input>

            <div class="form__input-tel">
                <input class="input-tel input-tel__country-code" type="text" name="countryCode" readonly="">
                    <xsl:attribute name="value">
                        <xsl:value-of select="/doc/location/telCode"/>
                    </xsl:attribute>
                </input>
                <input class="input-tel input-tel__operator-code" type="text" name="operatorCode" placeholder="Код" value="">
                </input>
                <input class="input-tel input-tel__number" type="text" name="telNumber" placeholder="Номер" value="">
                </input>
            </div>
        </div>


    </xsl:template>

    <xsl:template match="deliveryMethod" mode="form-delivery-method-radio-button">
        <div class="form__radio-button">
            <input class="radio-button-sqared radio-button-sqared__button" type="radio" name="deliveryMethod">
                <xsl:attribute name="value">
                    <xsl:value-of select="@type"/>
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of select="@type"/>
                </xsl:attribute>
            </input>
            <label class="radio-button-sqared__label">
                <xsl:attribute name="for">
                    <xsl:value-of select="@type"/>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </label>
        </div>
    </xsl:template>

    <xsl:template match="city" mode="form-delivery-availible-cities">
        <option class="select__item" value="">
            <xsl:value-of select="."/>
        </option>
    </xsl:template>

    <xsl:template match="paymentMethod" mode="form-payment-method">
        <div class="form__payment-method">
            <input class="radio-button-circle" type="radio" name="paymentMethod">
                <xsl:attribute name="value">
                    <xsl:value-of select="@type"/>
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of select="@type"/>
                </xsl:attribute>
            </input>
            <label class="radio-button-сircle__label">
                <xsl:attribute name="for">
                    <xsl:value-of select="@type"/>
                </xsl:attribute>
                <xsl:text>&#160;</xsl:text>
                <xsl:value-of select="."/>
            </label>
        </div>
    </xsl:template>

    <xsl:template match="notificationMethod" mode="form-notification-method">
        <div class="checkbox">
            <input class="checkbox__box" type="checkbox" value="">
                <xsl:attribute name="name">
                    <xsl:value-of select="@type"/>
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of select="@type"/>
                </xsl:attribute>
            </input>
            <label class="label">
                <xsl:attribute name="for">
                    <xsl:value-of select="@type"/>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </label>
        </div>
    </xsl:template>

</xsl:stylesheet>

