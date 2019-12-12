<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="header">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <xsl:call-template name="logo"/>
                    <xsl:apply-templates select="navigation/goodsNavigation" mode="page-header-goods-navigation"/>
                    <div class="header__fill"></div>
                    <div class="header__button">
                        <button class="header-button-icon header-button-icon_search">Поиск</button>
                    </div>
                    <xsl:apply-templates select="/doc/userInfo/status" mode="user-login-status"/>
                    <div class="header__button header__button_menu">
                        <button class="header-button-icon header-button-icon_menu">Меню</button>
                    </div>
                </div>
            </div>
        </header>
    </xsl:template>

</xsl:stylesheet>

