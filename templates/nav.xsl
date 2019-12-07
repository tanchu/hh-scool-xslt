<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Общий шаблон nav -->
  <xsl:template match="nav" mode="nav">
    <ul class="nav">
      <xsl:attribute name="class">
        <xsl:text>nav</xsl:text>
      </xsl:attribute>
      <xsl:apply-templates select="navItem" mode="nav-item"/>
    </ul>
  </xsl:template>

<!-- Шаблон nav с дополнительными классами от родительского блока -->
  <xsl:template match="nav[@parentMode!='']" mode="nav">
    <ul class="nav">
      <xsl:attribute name="class">
        <xsl:text>nav </xsl:text>
        <xsl:value-of select="@parentMode"/>
        <xsl:text>-list</xsl:text>
      </xsl:attribute>
      <xsl:apply-templates select="navItem" mode="nav-item">
        <xsl:with-param name="parentMode" select="@parentMode"/>
      </xsl:apply-templates>
    </ul>
  </xsl:template>

<!-- Шаблон элементов списка; параметр для добавления дополнительных классов от родительского блока -->
  <xsl:template match="navItem" mode="nav-item">
    <xsl:param name="parentMode"/>
    <li class="nav__item">
      <xsl:if test="$parentMode">
        <xsl:attribute name="class">
          <xsl:text>nav__item </xsl:text>
          <xsl:value-of select="$parentMode"/>
          <xsl:text>-item</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <a href="{@url}">
        <xsl:attribute name="class">
          <xsl:text>nav__link</xsl:text>
        </xsl:attribute>
        <xsl:if test="$parentMode">
          <xsl:attribute name="class">
            <xsl:text>nav__link </xsl:text>
            <xsl:value-of select="$parentMode"/>
            <xsl:text>-link</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:value-of select="."/>
      </a>
    </li>
  </xsl:template>
</xsl:stylesheet>