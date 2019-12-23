<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="doc" mode="navbar-section">
        <section class="navbar">
            <div class="columns-wrapper">
                <div class="navbar__content">
                    <xsl:apply-templates select="location" mode="location" />
                    <div class="navbar__fill"></div>
                    <xsl:apply-templates select="pageNavigation" mode="page-navigation" />
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="doc/pageNavigation" mode="page-navigation">
        <ul class="navbar__list">
            <xsl:apply-templates select="link" mode="page-navigation-link" />
        </ul>
    </xsl:template>

    <xsl:template match="pageNavigation/link" mode="page-navigation-link">
        <li class="navbar__item">
            <a class="navbar__link" href="{@url}">
                <xsl:value-of select="." />
            </a>
        </li>
    </xsl:template>

    <xsl:template match="location" mode="location">
        <div class="navbar__city">
            <xsl:apply-templates select="sity" mode="sity" />
        </div>
    </xsl:template>

    <xsl:template match="location/sity" mode="sity">
        <span class="city-text">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

</xsl:stylesheet>