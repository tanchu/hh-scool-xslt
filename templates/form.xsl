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
                                        <select class="select__select-field" name="cityLocataion" value="" size="{/doc/delivery/cityLocation/@size}">
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

                            <xsl:call-template name="input">
                                <xsl:with-param name="class" select="'button-submit form__button-submit'"/>
                                <xsl:with-param name="type" select="'submit'"/>
                                <xsl:with-param name="value" select="'Оформить заказ'"/>
                            </xsl:call-template>
                        </div>

                        <div class="column column_s-2 column_m-3 column_l-5">
                            <div class="form__product-card">
                                <xsl:apply-templates select="/doc/popularGoods/item[4]" mode="product-card-item-order"/>
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

            <xsl:call-template name="input">
                <xsl:with-param name="class" select="'form__input-text input-text'"/>
                <xsl:with-param name="type" select="'text'"/>
                <xsl:with-param name="name" select="'fullName'"/>
                <xsl:with-param name="placeholder" select="'ФИО'"/>
                <xsl:with-param name="value" select="''"/>
            </xsl:call-template>

            <xsl:call-template name="input">
                <xsl:with-param name="class" select="'form__input-text input-text'"/>
                <xsl:with-param name="type" select="'text'"/>
                <xsl:with-param name="name" select="'email'"/>
                <xsl:with-param name="placeholder" select="'Электронная почта'"/>
                <xsl:with-param name="value" select="''"/>
            </xsl:call-template>

            <div class="form__input-tel">
                <xsl:call-template name="input">
                    <xsl:with-param name="class" select="'input-tel input-tel__country-code'"/>
                    <xsl:with-param name="type" select="'text'"/>
                    <xsl:with-param name="name" select="'countryCode'"/>
                    <xsl:with-param name="placeholder" select="'Электронная почта'"/>
                    <xsl:with-param name="value" select="/doc/location/telCode"/>
                    <xsl:with-param name="readonly" select="''"/>
                </xsl:call-template>

                <xsl:call-template name="input">
                    <xsl:with-param name="class" select="'input-tel input-tel__operator-code'"/>
                    <xsl:with-param name="type" select="'text'"/>
                    <xsl:with-param name="name" select="'operatorCode'"/>
                    <xsl:with-param name="placeholder" select="'Код'"/>
                    <xsl:with-param name="value" select="''"/>
                </xsl:call-template>

                <xsl:call-template name="input">
                    <xsl:with-param name="class" select="'input-tel input-tel__number'"/>
                    <xsl:with-param name="type" select="'text'"/>
                    <xsl:with-param name="name" select="'telNumber'"/>
                    <xsl:with-param name="placeholder" select="'Номер'"/>
                    <xsl:with-param name="value" select="''"/>
                </xsl:call-template>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="deliveryMethod" mode="form-delivery-method-radio-button">
        <div class="form__radio-button">
            <xsl:call-template name="input">
                <xsl:with-param name="class" select="'radio-button-sqared radio-button-sqared__button'"/>
                <xsl:with-param name="type" select="'radio'"/>
                <xsl:with-param name="name" select="'deliveryMethod'"/>
                <xsl:with-param name="value" select="@type"/>
                <xsl:with-param name="id" select="@type"/>
            </xsl:call-template>

            <xsl:call-template name="label">
                <xsl:with-param name="class" select="'radio-button-sqared__label'"/>
                <xsl:with-param name="for" select="@type"/>
                <xsl:with-param name="content" select="."/>
            </xsl:call-template>
        </div>
    </xsl:template>

    <xsl:template match="city" mode="form-delivery-availible-cities">
        <option class="select__item" value="">
            <xsl:value-of select="."/>
        </option>
    </xsl:template>

    <xsl:template match="paymentMethod" mode="form-payment-method">
        <div class="form__payment-method">
            <xsl:call-template name="input">
                <xsl:with-param name="class" select="'radio-button-circle'"/>
                <xsl:with-param name="type" select="'radio'"/>
                <xsl:with-param name="name" select="'paymentMethod'"/>
                <xsl:with-param name="value" select="@type"/>
                <xsl:with-param name="id" select="@type"/>
            </xsl:call-template>

            <xsl:call-template name="label">
                <xsl:with-param name="class" select="'radio-button-сircle__label'"/>
                <xsl:with-param name="for" select="@type"/>
                <xsl:with-param name="content" select="."/>
            </xsl:call-template>
        </div>
    </xsl:template>

    <xsl:template match="notificationMethod" mode="form-notification-method">
        <div class="checkbox">
            <xsl:call-template name="input">
                <xsl:with-param name="class" select="'checkbox__box'"/>
                <xsl:with-param name="type" select="'checkbox'"/>
                <xsl:with-param name="name" select="'@type'"/>
                <xsl:with-param name="value" select="''"/>
                <xsl:with-param name="id" select="@type"/>
            </xsl:call-template>

            <xsl:call-template name="label">
                <xsl:with-param name="class" select="'label'"/>
                <xsl:with-param name="for" select="@type"/>
                <xsl:with-param name="content" select="."/>
            </xsl:call-template>
        </div>
    </xsl:template>

</xsl:stylesheet>

