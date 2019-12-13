<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="mainMenu" mode="main-menu">
        <div class="menu-content__info">
            <ul class="info">
                <xsl:apply-templates select="item" mode="main-menu-item"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="mainMenu/item" mode="main-menu-item">
        <li class="info__item">
            <a href="{@url}">
                <xsl:attribute name="class">
                    <xsl:text>info__link</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>