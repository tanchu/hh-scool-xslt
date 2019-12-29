<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="payment" mode="payment">
        <from>
            <xsl:apply-templates select="item" mode="payment-item"/>
        </from>
    </xsl:template>

    <xsl:template match="item" mode="payment-item">
        <p>
            <input type="radio" id="radioButton"/>
            <xsl:value-of select="."/>
        </p>
    </xsl:template>
</xsl:stylesheet>