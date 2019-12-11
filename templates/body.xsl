<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="doc" mode="body">
        <body>
            <xsl:apply-templates select="navigation" mode="page-navbar-section"/>

            <!-- 
            <section class="navbar">
                <div class="columns-wrapper">
                    <div class="navbar__content">
                        <xsl:apply-templates select="area" mode="navbar-city"/>
                        <div class="navbar__fill"></div>
                        <xsl:apply-templates select="navbar/menu" mode="navbar-menu"/>
                    </div>
                </div>
            </section>
            <header class="header">
                <div class="columns-wrapper">
                    <div class="header__content">
                        <div class="header__logo">
                            <a href="#" class="logo-link">
                                <img class="logo" src="css/logo.f8860031.svg" alt="hh.ru"/>
                            </a>
                        </div>

                        <xsl:apply-templates select="header/menu" mode="header-menu"/>

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
            <section class="carousel-section">
                <div class="columns-wrapper">
                    <div class="columns-row">
                        <div class="column column_s-2 column_m-3 column_l-6">

                            <h1 class="carousel-section__heading heading heading_level-1">
                                <xsl:apply-templates select="carousel/slides/slide[@active]" mode="slide-description"/>
                            </h1>

                            <div class="carousel-section__button">
                                <button class="carousel-section-button">
                             Перейти в каталог
                                </button>
                            </div>
                        </div>

                        <div class="column column_s-2 column_m-3 column_l-6 carousel-section__column">

                            <xsl:apply-templates select="carousel/slides/slide[@active]" mode="slide-image"/>

                        </div>
                        <div class="column column_s-2 column_m-6 column_l-12 carousel-section__column">
                            <div class="carousel-section__pagination pagination">
                                <div class="pagination__dot pagination__dot_active"></div>
                                <div class="pagination__dot"></div>
                                <div class="pagination__dot"></div>
                                <div class="pagination__dot"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section> -->
        </body>
    </xsl:template>


</xsl:stylesheet>