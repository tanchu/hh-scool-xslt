<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/doc/cities" mode="checkout-cities">
        <select class="checkout__select">
            <xsl:apply-templates select="city" mode="checkout-city"/>
        </select>
    </xsl:template>

    <xsl:template match="city" mode="checkout-city">
        <option>
            <xsl:value-of select="."/>
        </option>
    </xsl:template>
</xsl:stylesheet>