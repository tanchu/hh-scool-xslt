<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/doc/userInfo" mode="header-navigation-header-login-button">
        <div class="header__button">
            <xsl:apply-templates select="role/name[@type != 'guest']" mode="header-logout"/>
            <xsl:apply-templates select="role/name[@type = 'guest']" mode="header-login"/>
        </div>
    </xsl:template>
    <xsl:template match="role/name" mode="header-logout">
        <button class="header-button-icon header-button-icon_logout">Выйти</button>
        <button class="header-button header-button_logout">Выйти</button>
    </xsl:template>
    <xsl:template match="role/name[@type = 'guest']" mode="header-login">
        <button class="header-button-icon header-button-icon_login">Войти</button>
        <button class="header-button header-button_login">Войти</button>
    </xsl:template>
</xsl:stylesheet>