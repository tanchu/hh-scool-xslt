<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="header">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <xsl:call-template name="logo"/>
                    <xsl:apply-templates select="navigationBar/navigationProducts" mode="header-navigationBar-navigationProducts"/>
                    <div class="header__fill"></div>
                    <div class="header__button">
                        <button class="header-button-icon header-button-icon_search">Поиск</button>
                    </div>
                    <xsl:apply-templates select="/doc/informationAboutUser/loginStatus" mode="informationAboutUser-loginStatus"/>
                    <div class="header__button header__button_menu">
                        <button class="header-button-icon header-button-icon_menu">Меню</button>
                    </div>
                </div>
            </div>
        </header>
    </xsl:template>

    <xsl:template name="logo">
        <a href="#" class="logo-link">
            <img class="logo" src="css/logo.svg" alt="hh.ru" />
        </a>
    </xsl:template>

</xsl:stylesheet>

