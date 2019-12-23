<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="doc" mode="triggers-section">
    <xsl:apply-templates select="serviceTriggers[item]" mode="triggers-section-content"/>
  </xsl:template>

  <xsl:template match="serviceTriggers" mode="triggers-section-content">
    <section class="triggers-section">
      <div class="columns-wrapper">
        <div class="columns-row">
          <xsl:apply-templates select="item" mode="triggers-section-item"/>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="serviceTriggers/item" mode="triggers-section-item">
    <div class="column column_s-2 column_m-2 column_l-4">
      <div class="triggers-item">
        <div>
          <xsl:attribute name="class">
            <xsl:text>triggers-item__icon </xsl:text>
            <xsl:text>triggers-item__icon_</xsl:text>
            <xsl:value-of select="@name" />
            </xsl:attribute>
          </div>
          <div class="triggers-item__text">
            <xsl:value-of select="."/>
          </div>
        </div>
      </div>
    </xsl:template>

  </xsl:stylesheet>