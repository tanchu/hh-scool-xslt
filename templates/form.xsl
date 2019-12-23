<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template name="form">
        <div class="popup-order__form-container">
            <form action="#" class="form popup-order__form">
                <div class="form__items">
                    <div class="heading popup-order__form-title">Оформление заказа</div>
                    <div class="form__block">
                        <h3 class="heading heading_level-3">Контактное лицо</h3>
                        <div class="form__item">
                            <input type="text" class="input" placeholder="ФИО" required=""/>
                        </div>
                        <div class="form__item">
                            <input type="text" class="input" placeholder="Электронная почта" required=""/>
                        </div>
                        <div class="form__item">
                            <input type="text" class="input input_phone-pre" placeholder="+7" maxlength="2" required=""/>
                            <input type="text" class="input input_phone-code" placeholder="Код" maxlength="3" pattern="[0-9]{3}" required=""/>
                            <input type="text" class="input input_phone-number" placeholder="Номер" pattern="[0-9]{7}" maxlength="7" required=""/>
                        </div>
                    </div>
                    <div class="form__block">
                        <h3 class="heading heading_level-3">Способ получения заказа</h3>
                        <xsl:apply-templates select="deliveryVariants" mode="form-delivery"/>
                    </div>
                    <div class="form__block">
                        <h3 class="heading heading_level-3">Адрес</h3>
                        <xsl:apply-templates select="cities" mode="form-cities"/>
                        <div class="form__item">
                            <textarea name="address" class="textarea" placeholder="Адрес" required=""/>
                        </div>
                    </div>
                    <div class="form__block">
                        <h3 class="heading heading_level-3">Оплата</h3>
                        <xsl:apply-templates select="//paymentVariant" mode="form-payment"/>
                    </div>
                    <div class="form__block">
                        <h3 class="heading heading_level-3">Уведомления</h3>
                        <div class="form__item">
                            <label for="sms" class="form__label">
                                <input type="checkbox" name="sms" id="sms" class="checkbox"/>
                                <span class="checkbox-box"/>
                                <span class="checkbox-text">Хочу получать SMS уведомления</span>
                            </label>
                        </div>
                    </div>
                    <div class="form__item">
                        <button type="submit" class="button popup-order__form-button popup-order__form-button_submit">Оформить заказ</button>
                    </div>
                </div>
            </form>
        </div>
    </xsl:template>
    <xsl:template match="deliveryVariants" mode="form-delivery">
        <div class="form__item">
            <xsl:apply-templates select="deliveryVariant" mode="form-delivery-variant"/>
        </div>
    </xsl:template>
    <xsl:template match="deliveryVariant" mode="form-delivery-variant">
        <label class="form__label popup-order__form-label" for="{@id}">
            <input type="radio" id="{@id}" name="delivery" class="radio" value="{@id}"/>
            <span class="radio-button popup-order__form-button">Самовывоз</span>
        </label>
    </xsl:template>
    <xsl:template match="cities" mode="form-cities">
        <div class="form__item">
            <select name="city" class="select select_arrows">
                <option disabled="" value="null" class="option" selected="">Город</option>
                <xsl:apply-templates select="city" mode="form-city"/>
            </select>
        </div>
    </xsl:template>
    <xsl:template match="city" mode="form-city">
        <option value="{@value}" class="option">
            <xsl:value-of select="."/>
        </option>
    </xsl:template>
    <xsl:template match="paymentVariant" mode="form-payment">
        <div class="form__item">
            <label for="{@id}" class="form__label">
                <input type="radio" name="pay" id="{@id}" class="radio" value="{@id}"/>
                <span class="radio-box"/>
                <span class="radio-text">
                    <xsl:value-of select="."/>
                </span>
            </label>
        </div>
    </xsl:template>
</xsl:stylesheet>