<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="siteNav[navItem[text()]]" mode="top-nav">
    <ul>
      <xsl:attribute name="class">
        <xsl:text>nav </xsl:text>
        <xsl:text>top-section__nav-list</xsl:text>
      </xsl:attribute>
      <xsl:apply-templates select="." mode="top-nav-item"/>
    </ul>
  </xsl:template>

  <xsl:template match="siteNav/navItem[text()]" mode="top-nav-item">
    <li>
      <xsl:attribute name="class">
        <xsl:text>nav__item </xsl:text>
        <xsl:text>top-section__nav-item</xsl:text>
      </xsl:attribute>
      <a href="{@url}">
        <xsl:attribute name="class">
          <xsl:text>nav__link </xsl:text>
          <xsl:text>top-section__nav-link</xsl:text>
        </xsl:attribute>
        <xsl:value-of select="."/>
      </a>
    </li>
  </xsl:template>

  <xsl:template match="shopNav[navItem]" mode="header-nav">
    <ul>
      <xsl:attribute name="class">
        <xsl:text>nav</xsl:text>
      </xsl:attribute>
      <xsl:apply-templates select="." mode="header-nav-item"/>
    </ul>
  </xsl:template>

  <xsl:template match="shopNav/navItem[text()]" mode="header-nav-item">
    <li>
      <xsl:attribute name="class">
        <xsl:text>nav__item</xsl:text>
      </xsl:attribute>
      <a href="{@url}">
        <xsl:attribute name="class">
          <xsl:text>nav__link</xsl:text>
        </xsl:attribute>
        <xsl:value-of select="."/>
      </a>
    </li>
  </xsl:template>

</xsl:stylesheet>