<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../main-slider.xsl"/>

  <xsl:template match="mainSlider" mode="carousel-section">
    <section class="carousel-section">
      <div class="columns-wrapper">
        <div class="carousel-section__cards-wrapper">
          <xsl:apply-templates select="slide" mode="carousel-section-slide"/>
        </div>
        <xsl:apply-templates select="." mode="carousel-section-dots" />
      </div>
    </section>
  </xsl:template>

</xsl:stylesheet>