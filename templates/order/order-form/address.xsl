<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="cities" mode="address">
        <label class="form-order__label">Адрес</label>
        <div class="form-order-address-list">
            <div class="select-wrapper">
                <select class="select">
                    <xsl:apply-templates select="." mode="cities-item"/>
                </select>
            </div>
        </div>
        <div class="form-order-address-text">
            <textarea class="textarea" placeholder="Адрес"></textarea>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="cities-item">
        <option class="option"><xsl:value-of select="."/></option>
    </xsl:template>

</xsl:stylesheet>