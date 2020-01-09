<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="templates/head.xsl"/>
  <xsl:import href="templates/scripts.xsl"/>

  <xsl:import href="templates/sections/top-section.xsl"/>
  <xsl:import href="templates/sections/header.xsl"/>
  <xsl:import href="templates/sections/carousel-section.xsl"/>
  <xsl:import href="templates/sections/goods-section.xsl"/>
  <xsl:import href="templates/sections/triggers-section.xsl"/>
  <xsl:import href="templates/sections/footer.xsl"/>
  <xsl:import href="templates/popups/popup-order.xsl"/>

  <xsl:output method="html" encoding="UTF-8" indent="no" media-type="text/html;" />

  <xsl:template match="/doc">
    <html>
      <head>
        <xsl:call-template name="head"/>
      </head>
      <body>
        <xsl:apply-templates select="/doc" mode="body"/>
        <xsl:call-template name="scripts"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="doc" mode="body">

    <xsl:apply-templates select="/doc" mode="top-section"/>

    <xsl:apply-templates select="/doc" mode="header"/>

    <xsl:apply-templates select="mainSlider" mode="carousel-section"/>

    <xsl:apply-templates select="/doc" mode="goods-section"/>

    <xsl:apply-templates select="/doc" mode="triggers-section"/>

    <xsl:apply-templates select="/doc" mode="footer"/>

    <xsl:call-template name="popup-order"/>

  </xsl:template>

</xsl:stylesheet>

