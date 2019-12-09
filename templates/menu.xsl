<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="menu" mode="header-menu">
        <div class="header__nav">
            <ul class="nav">
                <xsl:apply-templates select="item" mode="header-menu-item"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="menu/item" mode="header-menu-item">
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

    <xsl:template match="menu" mode="navbar-menu">
        <div class="navbar__nav">
            <ul class="nav">
                <xsl:apply-templates select="item" mode="navbar-menu-item"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="menu/item" mode="navbar-menu-item">
        <li class="nav__item">
            <a href="{@url}">
                <xsl:attribute name="class">
                    <xsl:text>nav__link</xsl:text>
                    <xsl:text> nav__link_navbar</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>

</xsl:stylesheet>