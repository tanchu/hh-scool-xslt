<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="login" mode="login">
        <xsl:if test="@state='no'">
            <div class="header__button">
                <button class="header-button-icon header-button-icon_login">Войти</button>
                <button class="header-button header-button_login">Войти</button>
            </div>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>