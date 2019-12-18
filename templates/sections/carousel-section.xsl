<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../main-slider.xsl"/>

  <xsl:template match="doc" mode="carousel-section">
    <xsl:apply-templates select="/doc/mainSlider[slide[text()]]" mode="carousel-section-content"/>
  </xsl:template>

  <xsl:template match="mainSlider" mode="carousel-section-content">
    <section class="carousel-section">
      <div class="columns-wrapper">

        <xsl:apply-templates select="." mode="carousel-section-slide"/>

        <div class="carousel-dots">
          <ul class="carousel-dots__list">
            <li class="carousel-dots__item carousel-dots__item_active"></li>
            <li class="carousel-dots__item"></li>
          </ul>
        </div>
      </div>
    </section>
  </xsl:template>



</xsl:stylesheet>