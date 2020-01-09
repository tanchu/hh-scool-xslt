<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="mainSlider/slide" mode="carousel-section-slide">
    <div>
      <xsl:attribute name="class">
        <xsl:text>js-slide carousel-card</xsl:text>
        <xsl:apply-templates select="current()[@active='true']" mode="carousel-section-slide-class" />
      </xsl:attribute>
      <xsl:attribute name="data-slide-id">
        <xsl:value-of select="@id" />
      </xsl:attribute>
      <xsl:apply-templates select="." mode="carousel-section-slide-content" />
    </div>
  </xsl:template>

  <xsl:template match="slide" mode="carousel-section-slide-class">
    <xsl:text> carousel-card_active</xsl:text>
  </xsl:template>

  <xsl:template match="slide" mode="carousel-section-slide-content">
    <div class="carousel-card__description">
      <h1 class="heading carousel-card__description-title">
        <xsl:value-of select="description" />
      </h1>
      <button class="button carousel-card__description-button">Перейти в каталог</button>
    </div>
    <div class="carousel-card__image-container">
      <img class="carousel-card__image" src="{image/@src}" srcset="{image/@srcset}" alt="{image}"/>
    </div>
  </xsl:template>

  <xsl:template match="mainSlider" mode="carousel-section-dots">
    <div class="carousel-dots">
      <ul class="carousel-dots__list js-slide-buttons">
        <xsl:apply-templates select="slide" mode="carousel-section-dots-item" />
      </ul>
    </div>
  </xsl:template>

  <xsl:template match="mainSlider/slide" mode="carousel-section-dots-item">
    <li>
      <xsl:attribute name="class">
        <xsl:text>js-slide-button carousel-dots__item</xsl:text>
        <xsl:apply-templates select="current()[@active='true']" mode="carousel-section-dots-item-class" />
      </xsl:attribute>
      <xsl:attribute name="data-slide-id">
        <xsl:value-of select="@id" />
      </xsl:attribute>
    </li>
  </xsl:template>

  <xsl:template match="slide" mode="carousel-section-dots-item-class">
    <xsl:text> carousel-dots__item_active</xsl:text>
  </xsl:template>

</xsl:stylesheet>