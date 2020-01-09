<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="social" mode="social">
    <div class="social">
      <xsl:apply-templates select="." mode="social-item"/>
    </div>
  </xsl:template>

  <xsl:template match="socialItem" mode="social-item">
    <a class="social__link" target="_blank">
      <xsl:attribute name="href">
        <xsl:value-of select="link/@href"/>
      </xsl:attribute>
      <img>
        <xsl:attribute name="src">
          <xsl:value-of select="image/@src"/>
        </xsl:attribute>
        <xsl:attribute name="alt">
          <xsl:value-of select="image"/>
        </xsl:attribute>
      </img>
    </a>
  </xsl:template>

</xsl:stylesheet>