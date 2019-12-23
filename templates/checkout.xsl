<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="checkout-product.xsl"/>
    <xsl:template math="checkout" mode="chekout">
        <div class="checkout">
            <div class="columns-wrapper">
                <div class="checkout__header">
                    <div class="checkout__head">
                            Оформление заказа    
                    </div>
                    <div class="checkout__icon">
                        <img class="checkout__image" src="css/blocks/checkout/Union.svg" alt="закрыть"/>
                    </div>
                </div>
                <div class="columns-row">
                    <div class="column column_s-2 column_m-3 column_l-7">
                        <div class="checkout__text">
                            Контактное лицо
                        </div>
                        <div class="input__field">
                            <input type="text" class="input__brim" placeholder="ФИО"/>
                        </div>
                        <div class="input__field">
                            <input type="text" class="input__brim" placeholder="Электронная почта"/>
                        </div>
                        <div class="input__field">
                            <input type="text" class="input__brim input__phone__region" disabled="disabled" value="+7"/>
                            <input type="number" class="input__brim input__phone__cod" placeholder="Код"/>
                            <input type="number" class="input__brim input__phone__number" placeholder="Номер"/>
                        </div>
                        <div class="checkout__text">
                            Способ получения заказа 
                        </div>
                        <div class="checkout__button-group-container">
                            <button class="button checkout__button-group">Самовывоз</button>
                            <button class="button checkout__button-group">Доставка</button>
                        </div>
                        <div class="checkout__text">
                            Адрес
                        </div>
                        <div class="input__field">
                            <input type="text" class="input__brim input__address" placeholder="Адрес"/>
                        </div>
                        <div class="checkout__text">
                            Оплата
                        </div>
                        <div class="checkout__text">
                            Уведомления 
                        </div>
                        <div class="checkout__checkbox">
                            <input type="checkbox" name="sms"/>
                            <span>Хочу получать SMS уведомления</span>
                        </div>
                        <div class="button checkout__button">
                            Оформить заказ    
                        </div>
                    </div>
                    <xsl:apply-templates select="products" mode="checkout-product"/>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet> 