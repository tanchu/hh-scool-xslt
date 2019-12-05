<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="templates/head.xsl"/>
    <xsl:import href="templates/menu.xsl"/>

    <xsl:output method="html"/>

    <xsl:template match="/doc">
        <html>
            <head>
                <xsl:call-template name="head"/>
            </head>
            <body>
                <xsl:apply-templates select="/doc" mode="body"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="doc" mode="body">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <div class="header__logo">
                        <a href="https://leonidfeskov.github.io/hh-school-html/#" class="logo-link">
                            <img class="logo" src="files/logo.6442b6d6.svg" alt="hh.ru"/>
                        </a>
                    </div>

                    <xsl:apply-templates select="menu" mode="header-menu"/>

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

</xsl:stylesheet>

