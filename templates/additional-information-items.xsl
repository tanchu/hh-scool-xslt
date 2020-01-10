<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="navigation" mode="additional-information-items">
        <div class="additional-information">
            <div class ="columns-wrapper">
                <div class="additional-information__container">
                    <div class="additional-information__city">
                        <xsl:value-of select="/doc/location"/>
                    </div>
                    <div class="additional-information__items">
                        <ul class="nav">
                            <xsl:apply-templates select="item" mode="additional-information"/>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="navigation/item" mode="additional-information">
        <li class="nav__item">
            <a href="{@url}" class="additional-information__text">
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>