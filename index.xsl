<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="templates/head.xsl"/>
  <xsl:import href="templates/buttons.xsl"/>
  <xsl:import href="templates/nav.xsl"/>

  <xsl:output method="html"/>

  <xsl:template match="/doc">
    <html>
      <head>
        <xsl:call-template name="head"/>
      </head>
      <body>
        <xsl:apply-templates select="/doc" mode="body"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="doc" mode="body">

    <section class="top-section">
      <div class="columns-wrapper">
        <div class="top-section__content">
          <div class="top-section__button">
            <xsl:apply-templates select="/doc/topSection/buttons" mode="button"/>
          </div>
          <nav class="top-section__nav">
            <xsl:apply-templates select="/doc/topSection/nav" mode="nav"/>
          </nav>
        </div>
      </div>
    </section>

    <header class="header">
      <div class="columns-wrapper">
        <div class="header__content">
          <div class="header__logo">
            <a href="#" class="logo-link">
              <img class="logo" src="css/blocks/logo/logo-red.svg" alt="hh.ru" />
            </a>
          </div>
          <div class="header__nav">
            <xsl:apply-templates select="/doc/header/nav" mode="nav"/>
          </div>
          <div class="header__fill"></div>
          <xsl:apply-templates select="/doc/header/buttons" mode="buttons"/>
        </div>
      </div>
    </header>
  </xsl:template>

</xsl:stylesheet>

