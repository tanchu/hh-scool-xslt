<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="apps">
    <div class="apps">
      <xsl:call-template name="app-appstore"/>
      <xsl:call-template name="app-googleplay"/>
    </div>
  </xsl:template>

  <xsl:template name="app-appstore">
    <a href="#" class="apps__link" target="_blank">
      <img src="css/blocks/apps/icon-appstore.svg" alt="App Store" />
    </a>
  </xsl:template>

  <xsl:template name="app-googleplay">
    <a href="#" class="apps__link" target="_blank">
      <img src="css/blocks/apps/icon-googleplay.svg" alt="Google Play" />
    </a>
  </xsl:template>

</xsl:stylesheet>