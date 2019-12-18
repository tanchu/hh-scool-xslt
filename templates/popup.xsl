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
                <xsl:apply-templates select="/doc/popularGoods/item[4]" mode="product-card-item-popup-section"/>
                <input class="button-submit product-card__button-submit" type="submit" value="Заказать"></input>
            </div>
        </section>
    </xsl:template>

</xsl:stylesheet>


