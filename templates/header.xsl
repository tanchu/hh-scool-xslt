<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="common/logo/logo.xsl" />

    <xsl:template match="doc" mode="header">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <xsl:apply-templates select="logo" mode="header-logo" />
                    <xsl:apply-templates select="contentNavigation" mode="header-content-navigation" />
                    <div class="header__fill"></div>
                    <xsl:apply-templates select="searchAllowed" mode="header-button-search" /> 
                    <xsl:apply-templates select="authAllowed" mode="header-button-login" />
                    <xsl:apply-templates select="contentNavigation" mode="header-content-navigation-icon-menu" />
                </div>
            </div>
        </header>
    </xsl:template>

    <xsl:template match="contentNavigation" mode="header-content-navigation">
        <div class="header__nav">
            <xsl:apply-templates select="." mode="content-navigation" />
        </div>
    </xsl:template>

    <xsl:template match="contentNavigation" mode="header-content-navigation-icon-menu">
        <div class="header__button header__button-menu">
            <xsl:apply-templates select="." mode="content-navigation-icon-menu" />
        </div>
    </xsl:template>

    <xsl:template match="authAllowed" mode="header-button-login">
        <div class="header__button">
            <button class="header-button-icon header-button-icon_login">Войти</button>
            <button class="header-button header-button_login">Войти</button>
        </div>
    </xsl:template>

    <xsl:template match="searchAllowed" mode="header-button-search">
        <div class="header__button">
            <button class="header-button-icon header-button-icon_search">Поиск</button>
        </div>
    </xsl:template>

    <xsl:template match="contentNavigation" mode="content-navigation">
        <ul class="nav">
            <xsl:apply-templates select="link" mode="content-navigation-link" />
        </ul>
    </xsl:template>

    <xsl:template match="contentNavigation/link" mode="content-navigation-link">
        <li class="nav__item">
            <a class="nav__link" href="{@url}">
                <xsl:value-of select="." />
            </a>
        </li>
    </xsl:template>

    <xsl:template match="contentNavigation" mode="content-navigation-icon-menu">
        <button class="header-button-icon header-button-icon_menu">Меню</button>
    </xsl:template>

</xsl:stylesheet>