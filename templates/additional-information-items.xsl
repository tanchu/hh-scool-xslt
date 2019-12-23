<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="doc" mode="additional-information-items">
        <div class="additional-information">
            <div class ="columns-wrapper">
                <div class="additional-information__container">
                    <div class="additional-information__city">
                        <xsl:value-of select="location"/>
                    </div>
                    <div class="additional-information__items">
                        <ul class="nav">
                            <xsl:apply-templates select="site__nav/item" mode="addational-information"/>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="site__nav/item" mode="additional-information">
        <li class="nav__item">
            <a href="{@url}">
                <xsl:attribute name="class">
                    <xsl:text>nav__link</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>