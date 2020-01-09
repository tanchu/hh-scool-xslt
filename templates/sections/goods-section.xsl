<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../goods.xsl"/>

  <xsl:template match="doc" mode="goods-section">
    <xsl:apply-templates select="goods[item/@popular='true']" mode="goods-section-content"/>
  </xsl:template>

  <xsl:template match="goods" mode="goods-section-content">
    <section class="content-section">
      <div class="columns-wrapper">
      <h2 class="heading heading_level-2">Популярные товары</h2>
        <div class="columns-row">
          <xsl:apply-templates select="item[@popular='true']" mode="goods-section-item"/>
        </div>
      </div>
    </section>
  </xsl:template>

</xsl:stylesheet>