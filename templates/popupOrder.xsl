<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="popupOrder" mode="popup-order">
        <div class="popup-order">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="column column_s-2 column_m-3 column_l-7">
                        <div class="popup-order__form-container">
                            <form action="#" class="form popup-order__form">
                                <div class="form__items">
                                    <div class="heading popup-order__form-title">Оформление заказа</div>
                                    <div class="form__block">
                                        <h3 class="heading heading_level-3">Контактное лицо</h3>
                                        <div class="form__item">
                                            <input type="text" class="input" placeholder="ФИО" required="" />
                                        </div>
                                        <div class="form__item">
                                            <input type="text" class="input" placeholder="Электронная почта" required="" />
                                        </div>
                                    <div class="form__item">
                                        <input type="text" class="input input_phone-pre" placeholder="+7" maxlength="2" required="" />
                                        <input type="text" class="input input_phone-code" placeholder="Код" maxlength="3" pattern="[0-9]{3}" required="" />
                                        <input type="text" class="input input_phone-number" placeholder="Номер" pattern="[0-9]{7}" maxlength="7" required="" />
                                    </div>
                                    </div>
                                    <div class="form__block">
                                        <h3 class="heading heading_level-3">Способ получения заказа</h3>
                                        <div class="form__item">
                                            <label class="form__label popup-order__form-label" for="delivery-1">
                                            <input type="radio" id="delivery-1" name="delivery" class="radio" value="devivery-1" />
                                            <span class="radio-button popup-order__form-button">Самовывоз</span>
                                        </label>
                                            <label class="form__label popup-order__form-label" for="delivery-2">
                                                <input type="radio" id="delivery-2" name="delivery" class="radio" value="devivery-2" checked="" />
                                                <span class="radio-button popup-order__form-button">Доставка</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form__block">
                                        <h3 class="heading heading_level-3">Адрес</h3>
                                        <div class="form__item">
                                            <select name="city" class="select select_arrows">
                                                <option disabled="" value="null" class="option" selected="">Город</option>
                                                <option value="0" class="option">Москва</option>
                                                <option value="1" class="option">Санкт-Петербург</option>
                                                <option value="2" class="option">Владимир</option>
                                            </select>
                                        </div>
                                        <div class="form__item">
                                            <textarea name="address" class="textarea" placeholder="Адрес" required="">
                                            </textarea>
                                        </div>
                                    </div>
                                    <div class="form__block">
                                        <h3 class="heading heading_level-3">Оплата</h3>
                                        <div class="form__item">
                                            <label for="online" class="form__label">
                                                <input type="radio" name="pay" id="online" class="radio" value="online" checked="" />
                                                <span class="radio-box"></span>
                                                <span class="radio-text">Online-оплата</span>
                                            </label>
                                        </div>
                                        <div class="form__item">
                                            <label for="cash" class="form__label">
                                                <input type="radio" name="pay" id="cash" class="radio" value="cash" />
                                                <span class="radio-box"></span>
                                                <span class="radio-text">Наличными</span>
                                            </label>
                                        </div>
                                        <div class="form__item">
                                            <label for="card" class="form__label">
                                                <input type="radio" name="pay" id="card" class="radio" value="card" />
                                                <span class="radio-box"></span>
                                                <span class="radio-text">Картой при получении</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form__block">
                                        <h3 class="heading heading_level-3">Уведомления</h3>
                                        <div class="form__item">
                                            <label for="sms" class="form__label">
                                                <input type="checkbox" name="sms" id="sms" class="checkbox" />
                                                <span class="checkbox-box"></span>
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
                    </div>
                    <div class="column column_s-0 column_m-0 column_l-1"></div>

                    <div class="column column_s-0 column_m-3 column_l-4">
                        <xsl:apply-templates select="//item[@id='4']" mode="popup-products-item"/>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="//item[@id='4']" mode="popup-products-item">
        <div class="popup-order__product">
            <div class="product-card popup-order__card">
                <div class="product-card__image-container">
                    <img class="product-card__image" src="{image}" />
                    <xsl:apply-templates select="oldPrice" mode="sale" />
                </div>
                <div class="product-card__name">
                    <xsl:value-of select="name" />
                </div>

                <div class="product-card__price">
                    <xsl:apply-templates select="oldPrice" mode="products-item-sale" />
                    <xsl:value-of select="price" />
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="key('key-currency','currency')"/>
                </div>

                <div class="product-card__description">
                    <xsl:value-of select="description" />
                </div>

                <div class="product-card__sizing-container">
                    <xsl:apply-templates select="sizes" mode="popcard-sizes" />
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="sizes" mode="popcard-sizes">
        <xsl:apply-templates select="size" mode="popcard-sizes-size" />
    </xsl:template>

    <xsl:template match="size" mode="popcard-sizes-size">
        <div class="product-card__sizing-box">
            <label>
                <input type="radio" name="size" class="radio" value="{@type}" >
                <xsl:if test="@available = 'false'">
                    <xsl:attribute name="disabled" />
                </xsl:if>
                </input>
                <span class="radio-button product-card__sizing-button">
                    <xsl:if test="position() = last()">
                        <xsl:attribute name="class">
                            <xsl:text>radio-button product-card__sizing-button product-card__sizing-button_last</xsl:text>
                        </xsl:attribute>
                    </xsl:if>

                    <xsl:value-of select="@type" />
                </span>
            </label>
        </div>
    </xsl:template>

</xsl:stylesheet>