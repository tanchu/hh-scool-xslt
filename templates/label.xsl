<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="label">
        <xsl:param name="class" select="'empty'"/>
        <xsl:param name="for" select="'empty'"/>
        <xsl:param name="content" select="'empty'"/>

        <label class="{$class}" for="{$for}">
            <xsl:text>&#160;</xsl:text>
            <xsl:value-of select="$content"/>
        </label>
    </xsl:template>

</xsl:stylesheet>



