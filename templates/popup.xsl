<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="popup">
        <section class="popup">
            <div class="popup-container">
                <div class="popup-container__button-close">
                    <button class="button-close-icon button-close">
                        Закрыть
                    </button>
                </div>
                <xsl:apply-templates select="/doc/popularGoods/item[4]" mode="product-card-item-order"/>
                <xsl:call-template name="input">
                    <xsl:with-param name="class" select="'button-submit product-card__button-submit'"/>
                    <xsl:with-param name="type" select="'submit'"/>
                    <xsl:with-param name="value" select="'Заказать'"/>
                </xsl:call-template>
            </div>
        </section>
    </xsl:template>

</xsl:stylesheet>


