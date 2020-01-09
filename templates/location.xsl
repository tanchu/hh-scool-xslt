<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="location" mode="location-top">
    <button class="button-link">
      <xsl:value-of select="."/>
    </button>
  </xsl:template>

</xsl:stylesheet>