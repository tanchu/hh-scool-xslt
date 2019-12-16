<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="order-form-notifications">
        <fieldset class="order-form__section">
            <legend class="order-form__legend">Уведомления</legend>
            <xsl:call-template name="sms-notification" />
        </fieldset>
    </xsl:template>
    
    <xsl:template name="sms-notification">
        <label class="checkbox">
            <input type="checkbox" name="checkbox-sms" class="checkbox__input" />
            <span class="checkbox__box"></span>
            <span class="checkbox__texаt">Хочу получать SMS уведомления</span>
        </label>
    </xsl:template>

</xsl:stylesheet>