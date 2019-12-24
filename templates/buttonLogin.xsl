<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="role" mode="user-login-status">
        <div class="header__button">
            <xsl:if test=" . = 'anonymous' ">
                <button class="header-button-icon header-button-icon_login">Войти</button>
                <button class="header-button header-button_login">Войти</button>
            </xsl:if>
            <xsl:if test=" . != 'anonymous' ">
                <button class="header-button-icon header-button-icon_login">Выйти</button>
                <button class="header-button header-button_login">Выйти</button>
            </xsl:if>
        </div>
    </xsl:template>

</xsl:stylesheet>
