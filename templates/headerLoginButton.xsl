<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/doc/userInfo" mode="header-navigation-header-login-button" >
        <div class="header__button">
            <xsl:choose>
                <xsl:when test="login">
                    <button class="header-button-icon header-button-icon_login">Выйти</button>
                    <button class="header-button header-button_login">Выйти</button>
                </xsl:when>
                <xsl:otherwise>
                    <button class="header-button-icon header-button-icon_login">Войти</button>
                    <button class="header-button header-button_login">Войти</button>
                </xsl:otherwise>
            </xsl:choose>
        </div>
    </xsl:template>

</xsl:stylesheet>