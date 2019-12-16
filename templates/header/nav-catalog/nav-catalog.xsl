<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="navCatalog" mode="nav-catalog">
        <div class="header__nav">
            <ul class="nav">
                <xsl:apply-templates select="item" mode="nav-catalog-item"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="nav-catalog-item">
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

</xsl:stylesheet>