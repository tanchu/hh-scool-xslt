<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/doc/userInfo" mode="headerNavigation-headerLoginButton" >
        <div class="header__button">
            <xsl:apply-templates select="loginStatus" mode="headerNavigation-loginButton" />
        </div>
    </xsl:template>

    <xsl:template match="loginStatus[@isLogged='false']" mode="headerNavigation-loginButton">
        <button class="header-button header-button_login">Войти</button>
    </xsl:template>
    <xsl:template match="loginStatus[@isLogged='true']" mode="headerNavigation-loginButton">
        <button class="header-button header-button_login">Выйти</button>
    </xsl:template>

</xsl:stylesheet>