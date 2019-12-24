<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="input">
        <xsl:param name="class" select="'empty'"/>
        <xsl:param name="type" select="'empty'"/>
        <xsl:param name="name" select="'empty'"/>
        <xsl:param name="value" select="'empty'"/>
        <xsl:param name="placeholder" select="'empty'"/>
        <xsl:param name="readonly" select="'empty'"/>
        <xsl:param name="id" select="'empty'"/>
        <xsl:param name="available" select="'empty'"/>

        <input class="{$class}" type="{$type}">
            <xsl:if test="$name != 'empty'">
                <xsl:attribute name = "name">
                    <xsl:value-of select="$name"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="$value != 'empty'">
                <xsl:attribute name = "value">
                    <xsl:value-of select="$value"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="$placeholder != 'empty'">
                <xsl:attribute name = "placeholder">
                    <xsl:value-of select="$placeholder"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="$readonly != 'empty'">
                <xsl:attribute name = "readonly">
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="$id != 'empty'">
                <xsl:attribute name = "id">
                    <xsl:value-of select="$id"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="$available = 'false'">
                <xsl:attribute name="disabled">
                </xsl:attribute>
            </xsl:if>
        </input>
    </xsl:template>

</xsl:stylesheet>



