<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="siteNav" mode="top-nav">
    <ul class="nav top-section__nav-list">
      <xsl:apply-templates select="navItem" mode="top-nav-item"/>
    </ul>
  </xsl:template>

  <xsl:template match="siteNav/navItem" mode="top-nav-item">
    <li class="nav__item top-section__nav-item">
      <a href="{@url}" class="nav__link top-section__nav-link">
        <xsl:value-of select="."/>
      </a>
    </li>
  </xsl:template>

  <xsl:template match="shopNav" mode="header-nav">
    <ul class="nav">
      <xsl:apply-templates select="navItem" mode="header-nav-item"/>
    </ul>
  </xsl:template>

  <xsl:template match="shopNav/navItem" mode="header-nav-item">
    <li class="nav__item">
      <a href="{@url}" class="nav__link">
        <xsl:value-of select="."/>
      </a>
    </li>
  </xsl:template>

</xsl:stylesheet>