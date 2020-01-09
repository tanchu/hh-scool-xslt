<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../nav.xsl"/>
  <xsl:import href="../logo.xsl"/>
  <xsl:import href="../login.xsl"/>

  <xsl:template match="doc" mode="header">
    <header class="header">
      <div class="columns-wrapper">
        <div class="header__content">
          <div class="header__logo">
            <xsl:call-template name="logo"/>
          </div>
          <xsl:apply-templates select="shopNav" mode="header-shop-nav"/>
          <div class="header__fill"></div>
          <div class="header__button">
            <button class="header-button-icon header-button-icon_search">Поиск</button>
          </div>
          <div class="header__button">
            <button class="header-button-icon header-button-icon_login"></button>
            <xsl:apply-templates select="/doc/userInfo/login" mode="header-login-button"/>
          </div>
          <div class="header__button header__button_menu">
            <button class="header-button-icon header-button-icon_menu">Меню</button>
          </div>
        </div>
      </div>
    </header>
  </xsl:template>

  <xsl:template match="shopNav" mode="header-shop-nav">
    <div class="header__nav">
      <xsl:apply-templates select="." mode="header-nav"/>
    </div>
  </xsl:template>

</xsl:stylesheet>