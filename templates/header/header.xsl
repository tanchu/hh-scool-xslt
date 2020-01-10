<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/doc" mode="header">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <xsl:apply-templates select="logo/main" mode="header-logo"/>
                    <xsl:apply-templates select="catalogNav" mode="catalog-nav"/>
                    <div class="header__fill"></div>
                    <xsl:apply-templates select="." mode="search-button"/>
                    <xsl:apply-templates select="." mode="login"/>
                </div>
            </div>
        </header>
    </xsl:template>

    <xsl:template match="main" mode="header-logo">
        <div class="header__logo">
            <a href="{@url}" class="logo-link">
                <img class="logo" src="{@img}" alt="{@alt}"/>
            </a>
        </div>
    </xsl:template>

    <xsl:template match="catalogNav" mode="catalog-nav">
        <div class="header__nav">
            <ul class="nav">
                <xsl:apply-templates select="item" mode="catalog-nav-item"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="catalog-nav-item">
        <li class="nav__item">
            <a href="{@url}">
                <xsl:attribute name="class">
                    <xsl:text>nav__link</xsl:text>
                    <xsl:if test="@active">
                        <xsl:text> nav__link_active</xsl:text>
                    </xsl:if>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>

    <xsl:template match="/doc" mode="search-button">
        <div class="header__button">
            <button class="header-button-icon header-button-icon_search">Поиск</button>
        </div>
    </xsl:template>

    <xsl:template match="/doc" mode="login">
        <div class="header__button">
            <button class="header-button-icon header-button-icon_login">Войти</button>
            <button class="header-button header-button_login">Войти</button>
        </div>
    </xsl:template>

    <xsl:template match="/doc[account]" mode="login">
        <div class="header__button">
            <button class="header-button-icon header-button-icon_login">Выйти</button>
            <button class="header-button header-button_login">Выйти</button>
        </div>
    </xsl:template>

</xsl:stylesheet>