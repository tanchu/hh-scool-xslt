<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="area" mode="navbar-city">
        <div class="navbar__city">
            <xsl:apply-templates select="city"/>
        </div>
    </xsl:template>

    <xsl:template match="city">
        <a href="{@url}">
            <xsl:attribute name="class">
                <xsl:text>nav__link nav__link_city</xsl:text>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </a>
    </xsl:template>

</xsl:stylesheet>