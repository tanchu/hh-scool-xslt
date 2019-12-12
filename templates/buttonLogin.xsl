<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="status" mode="user-login-status">
        <div class="header__button">
            <xsl:apply-templates select="." mode="user-login-status-value"/>
        </div>
    </xsl:template>


    <xsl:template match="status[@logged='false']" mode="user-login-status-value">
        <button class="header-button-icon header-button-icon_login">Войти</button>
        <button class="header-button header-button_login">Войти</button>
    </xsl:template>

    <xsl:template match="status[@logged='true']" mode="user-login-status-value">
        <button class="header-button-icon header-button-icon_login">Выйти</button>
        <button class="header-button header-button_login">Выйти</button>
    </xsl:template>

</xsl:stylesheet>
