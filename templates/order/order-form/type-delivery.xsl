<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="delivery" mode="type-delivery">
        <label class="form-order__label">Способ получения заказа</label>
        <div class="group-buttons">
            <xsl:apply-templates select="." mode="type-delivery-item"/>
        </div>
    </xsl:template>

    <xsl:template match="type" mode="type-delivery-item">
        <input type="radio" id="{@label}" name="type-delivery"/>
        <div class="radio-button-text radio-button-text_delivery">
            <label for="{@label}"><xsl:value-of select="."/></label>
        </div>
    </xsl:template>

</xsl:stylesheet>