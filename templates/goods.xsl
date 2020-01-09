<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="sizing.xsl"/>

  <xsl:key name="currency" match="/doc/currency/item" use="@name"/>

  <xsl:template match="goods/item" mode="goods-section-item">
    <div class="column column_s-1 column_m-2 column_l-4">
      <div class="product-card">
        <div class="product-card__image-container">
          <img class="product-card__image" src="{image/@src}" alt="{name}" />
        </div>
        <div class="product-card__name">
          <xsl:value-of select="name"/>
        </div>
        <div class="product-card__price">
          <xsl:apply-templates select="price/oldPrice" mode="goods-section-item-old-price"/>
          <xsl:value-of select="price/currentPrice"/>
          <xsl:text></xsl:text>
          <xsl:value-of select="key('currency', /doc/location/@currency)"/>
        </div>
        <div class="product-card__description">
          <xsl:value-of select="description"/>
        </div>
        <xsl:apply-templates select="size" mode="sizing"/>
        <div class="product-card__order-button-container">
          <button class="button product-card__order-button">Заказать</button>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="price/oldPrice" mode="goods-section-item-old-price">
    <span class="product-card__old-price">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>

</xsl:stylesheet>