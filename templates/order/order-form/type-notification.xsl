<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="notification" mode="type-notification">
        <label class="form-order__label">Уведомления</label>
        <div class="form-order-notice-checkbox-sms">
            <xsl:apply-templates select="." mode="type-notification-item"/>
        </div>

    </xsl:template>

    <xsl:template match="type" mode="type-notification-item">
        <input type="checkbox" id="{@label}"/>
        <label class="form-order__text" for="{@label}"><xsl:value-of select="."/></label>
    </xsl:template>

</xsl:stylesheet>