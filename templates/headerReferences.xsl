<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="headerReferences" mode="headerReferences">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <div class="header__logo">
                        <a href="#" class="logo-link">
                            <img class="logo" src="css/logo-red.6442b6d6.svg" alt="hh.ru" />
                        </a>
                    </div>
                    <div class="header__nav">
                        <ul class="nav">
                            <xsl:apply-templates select="reference" mode="headerReferences-reference" />
                        </ul>
                    </div>
                    <div class="header__fill"></div>
                    <div class="header__button">
                        <button class="header-button-icon header-button-icon_search">Поиск</button>
                    </div>
                    <div class="header__button">
                        <xsl:apply-templates select="/doc/userInfo/loginStatus" mode="headerReferences-loginButton" />
                    </div>
                    <div class="header__button header__button_menu">
                        <button class="header-button-icon header-button-icon_menu">Меню</button>
                    </div>
                </div>
            </div>
        </header>
    </xsl:template>
    <xsl:template match="reference" mode="headerReferences-reference">
        <li class="nav__item">
            <a href="{@src}" class="nav__link">
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="loginStatus[@isLogged='false']" mode="headerReferences-loginButton">
        <button class="header-button-icon header-button-icon_login">Войти</button>
        <button class="header-button header-button_login">Войти</button>
    </xsl:template>
    <xsl:template match="loginStatus[@isLogged='true']" mode="headerReferences-loginButton">
        <button class="header-button-icon header-button-icon_login">Выйти</button>
        <button class="header-button header-button_login">Выйти</button>
    </xsl:template>

</xsl:stylesheet>