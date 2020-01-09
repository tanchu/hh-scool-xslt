<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../location.xsl"/>
  <xsl:import href="../nav.xsl"/>

  <xsl:template match="doc" mode="top-section">
    <xsl:apply-templates select="current()[location or siteNav]" mode="top-section-content"/>
  </xsl:template>

  <xsl:template match="doc" mode="top-section-content">
    <section class="top-section">
      <div class="columns-wrapper">
        <div class="top-section__content">
          <xsl:apply-templates select="location" mode="top-section-button"/>
          <xsl:apply-templates select="siteNav" mode="top-section-nav"/>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="location" mode="top-section-button">
    <div class="top-section__button">
      <xsl:apply-templates select="." mode="location-top"/>
    </div>
  </xsl:template>

  <xsl:template match="siteNav" mode="top-section-nav">
    <nav class="top-section__nav">
      <xsl:apply-templates select="." mode="top-nav"/>
    </nav>
  </xsl:template>

</xsl:stylesheet>