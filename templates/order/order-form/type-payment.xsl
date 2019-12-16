<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="payment" mode="type-payment">
        <label class="form-order__label">Оплата</label>
        <div class="form-order-radio-group">
            <xsl:apply-templates select="." mode="type-payment-item"/>
        </div>
    </xsl:template>

    <xsl:template match="type" mode="type-payment-item">
        <div class="form-order-radio-group__element">
            <input type="radio" name="payment" id="{@label}"/>
            <label class="form-order__text" for="{@label}"><xsl:value-of select="."/></label>
        </div>
    </xsl:template>

</xsl:stylesheet>