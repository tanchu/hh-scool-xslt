<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="templates/head.xsl"/>

  <xsl:import href="templates/sections/top-section.xsl"/>
  <xsl:import href="templates/sections/header.xsl"/>

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/doc">
    <html>
      <head>
        <xsl:call-template name="head"/>
      </head>
      <body>
        <xsl:apply-templates select="/doc" mode="body"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="doc" mode="body">

    <xsl:apply-templates select="/doc" mode="top-section"/>

    <xsl:apply-templates select="/doc" mode="header"/>

  </xsl:template>

</xsl:stylesheet>

