<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../nav.xsl"/>

  <xsl:template match="doc" mode="header">
    <header class="header">
      <div class="columns-wrapper">
        <div class="header__content">
          <div class="header__logo">
            <a href="#" class="logo-link">
              <img class="logo" src="css/blocks/logo/logo-red.svg" alt="hh.ru" />
            </a>
          </div>
          <div class="header__nav">
            <xsl:apply-templates select="/doc/shopNav" mode="header-nav"/>
          </div>
          <div class="header__fill"></div>
          
        </div>
      </div>
    </header>
  </xsl:template>

</xsl:stylesheet>