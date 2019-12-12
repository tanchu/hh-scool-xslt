<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:key name="currency-cache" match="/doc/currency" use="@type"/>

    <xsl:template match="currency" mode="currencyCash">
        <xsl:value-of select="@value"/>
    </xsl:template>


</xsl:stylesheet>