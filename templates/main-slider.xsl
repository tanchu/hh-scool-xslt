<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="mainSlider/slide[text()]" mode="carousel-section-slide">
    <div>
      <xsl:attribute name="data-card">
        <xsl:value-of select="@id" />
      </xsl:attribute>
      <xsl:attribute name="class">
        <xsl:text>carousel-card</xsl:text>
      </xsl:attribute>

      <div>
        <xsl:attribute name="class">
          <xsl:text>carousel-card__description</xsl:text>
        </xsl:attribute>
        <h1>
          <xsl:attribute name="class">
            <xsl:text>heading </xsl:text>
            <xsl:text>carousel-card__description-title</xsl:text>
          </xsl:attribute>
          <xsl:value-of select="description" />
        </h1>
        <button class="button carousel-card__description-button">Перейти в каталог</button>
      </div>

      <div>
        <xsl:attribute name="class">
          <xsl:text>carousel-card__image-container</xsl:text>
        </xsl:attribute>
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="image/@src" />
          </xsl:attribute>
          <xsl:attribute name="class">
            <xsl:text>carousel-card__image</xsl:text>
          </xsl:attribute>
        </img>
      </div>

    </div>
  </xsl:template>

</xsl:stylesheet>