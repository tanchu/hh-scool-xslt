<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/doc/userInfo" mode="header-navigation-header-login-button" >
        <div class="header__button">
            <xsl:apply-templates select="loginStatus" mode="header-navigation-login-button" />
        </div>
    </xsl:template>

    <xsl:template match="loginStatus[@isLogged='false']" mode="header-navigation-login-button">
        <button class="header-button-icon header-button-icon_login">Войти</button>
    </xsl:template>
    <xsl:template match="loginStatus[@isLogged='true']" mode="header-navigation-login-button">
        <button class="header-button-icon header-button-icon_login">Выйти</button>
    </xsl:template>

</xsl:stylesheet>