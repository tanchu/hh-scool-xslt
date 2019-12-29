<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="header__nav" mode="header">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <div class="header__logo">
                        <a href="#" class="logo-link">
                            <img class="logo" src="css/blocks/logo/logo.svg" alt="hh.ru"/>
                        </a>
                    </div>
                    <div class="header__nav">
                        <ul class="nav">
                            <xsl:apply-templates select="item" mode="header-shop-nav"/>
                        </ul>
                    </div>
                    <div class="header__fill"></div>
                    <div class="header__button">
                        <button class="header-button-icon header-button-icon_search">Поиск</button>
                    </div>
                    <div class="header__button">
                        <button class="header-button-icon header-button-icon_login">Войти</button>
                        <button class="header-button header-button_login">Войти</button>
                    </div>
                    <div class="header__button header__button_menu">
                        <button class="header-button-icon header-button-icon_menu">Меню</button>
                    </div>
                </div>
            </div>
        </header>
    </xsl:template>
    <xsl:template match="header__nav/item" mode="header-shop-nav">
        <li class="nav__item">
            <a href="{@url}" class="nav__link">
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>