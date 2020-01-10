<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="telephone-field">
        <div class="telephone-input">
            <div class="telephone-input__country-code">
                <input class="input" type="text" name="code" value="+7" disabled="" />
            </div>
            <div class="telephone-input__code">
                <input class="input" type="text" name="code" placeholder="Код" />
            </div>
            <div class="telephone-input__number">
                <input class="input" type="text" name="tel" placeholder="Номер" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="sities" mode="order-form-adress">
        <fieldset class="order-form__section">
            <legend class="order-form__legend">Адрес</legend>
            <div class="order-form__sity-select">
                <xsl:apply-templates select="." mode="select" />
            </div>
            <textarea class="textarea" name="adress" placeholder="Адрес" required="" />
        </fieldset>
    </xsl:template>

    <xsl:template match="sities" mode="select">
        <select class="select">
            <option value="null" selected="" disabled="">
                Город
            </option>
            <xsl:apply-templates select="sity" mode="select-option" />
        </select>
    </xsl:template>

    <xsl:template match="sity" mode="select-option">
        <option>
            <xsl:attribute name = "value">
                <xsl:value-of select="." />
            </xsl:attribute>
            <xsl:value-of select="." />
        </option>
    </xsl:template>

</xsl:stylesheet>