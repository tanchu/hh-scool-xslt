<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="headerNavigation" mode="header">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <xsl:call-template name="header-logo" />
                    <ul class="nav">
                        <xsl:apply-templates select="item" mode="header-navigation-item" />
                    </ul>
                    <div class="header__fill"></div>
                    <div class="header__button">
                        <button class="header-button-icon header-button-icon_search">Поиск</button>
                    </div>

                    <xsl:apply-templates select="/doc/userInfo" mode="header-navigation-header-login-button" />
                    <div class="header__button header__button_menu">
                        <button class="header-button-icon header-button-icon_menu">Меню</button>
                    </div>
                </div>
            </div>
        </header>
    </xsl:template>

    <xsl:template match="headerNavigation" mode="header-navigation">
        <div class="header__nav">
            <ul class="nav">
                <xsl:apply-templates select="item" mode="header-navigation-item" />
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="header-navigation-item">
        <li class="nav__item">
            <a href="{@src}" class="nav__link">
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>

</xsl:stylesheet>