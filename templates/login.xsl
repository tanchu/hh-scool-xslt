<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="login" mode="header-login-button">
    <button class="header-button header-button_login">
      <xsl:apply-templates select="." mode="header-login-button-text" />
    </button>
  </xsl:template>

  <xsl:template match="login" mode="header-login-button-text">
    <xsl:text>Войти</xsl:text>
  </xsl:template>

  <xsl:template match="login[@auth='true']" mode="header-login-button-text">
    <xsl:value-of select="../name" />
  </xsl:template>

</xsl:stylesheet>
