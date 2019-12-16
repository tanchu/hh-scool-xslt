<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="logo" mode="header-logo">
        <div class="header__logo">
            <xsl:apply-templates select="." mode="logo-red" />
        </div>
    </xsl:template>

    <xsl:template match="logo" mode="footer-logo">
        <div class="column column_l-4">
            <div class="footer__logo">
                <xsl:apply-templates select="." mode="logo-grey" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="logo" mode="logo-red">
        <a href="{@url}">
            <img class="logo" src="{@srcRed}" alt="hh.ru" />
        </a>
    </xsl:template>

    <xsl:template match="logo" mode="logo-grey">
        <a href="{@url}">
            <img class="logo" src="{@srcGrey}" alt="hh.ru" />
        </a>
    </xsl:template>

</xsl:stylesheet>