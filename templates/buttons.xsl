<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="buttons" mode="buttons">

  </xsl:template>

  <xsl:template match="button" mode="button">
    <button>
      <xsl:attribute name="class">
        <xsl:text> </xsl:text>
      </xsl:attribute>
      <xsl:value-of select="."/>
    </button>
  </xsl:template>

</xsl:stylesheet>