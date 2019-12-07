<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="buttons" mode="buttons">
    <xsl:for-each select="button">
      <div>
        <xsl:attribute name="class">
          <xsl:value-of select="../@parentBlock"/>
        </xsl:attribute>
        <xsl:apply-templates select="." mode="button"/>
      </div>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="button" mode="button">
    <xsl:variable name="blockClass" select="@type"/>
    <button>
      <xsl:attribute name="class">
        <xsl:value-of select="$blockClass"/>
        <xsl:if test="@for">
          <xsl:value-of select="concat(' ', $blockClass, '_')"/>
          <xsl:value-of select="@for"/>
        </xsl:if>
      </xsl:attribute>
      <xsl:value-of select="."/>
    </button>
  </xsl:template>

</xsl:stylesheet>