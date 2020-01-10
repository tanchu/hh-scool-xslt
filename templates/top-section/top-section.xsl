<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/doc" mode="top-section">
        <section class="menu-section">
            <div class="columns-wrapper">
                <div class="menu-content">
                    <xsl:apply-templates select="currentCity" mode="current-city"/>
                    <xsl:apply-templates select="mainMenu" mode="main-menu"/>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="currentCity" mode="current-city">
        <div class="menu-content__city">
            <xsl:value-of select="."/>
        </div>
    </xsl:template>

    <xsl:template match="mainMenu" mode="main-menu">
        <div class="menu-content__info">
            <ul class="info">
                <xsl:apply-templates select="item" mode="main-menu-item"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="main-menu-item">
        <li class="info__item">
            <a href="{@url}" class="info__link">
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>

</xsl:stylesheet>