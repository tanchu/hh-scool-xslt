<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="templates/head.xsl"/>
  <xsl:import href="templates/body.xsl"/>
  <xsl:output method="html" encoding="UTF-8" indent="no" media-type="text/html;"/>

  <xsl:template match="/doc">
    <html>
      <head>
        <xsl:call-template name="head"/>
      </head>
      <xsl:apply-templates select="/doc" mode="body"/>
    </html>
  </xsl:template>
</xsl:stylesheet>