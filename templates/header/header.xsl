<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="catalog-nav/catalog-nav.xsl"/>
    <xsl:import href="login/login.xsl"/>
    <xsl:import href="search-button/search-button.xsl"/>
    <xsl:import href="first-logo/first-logo.xsl"/>

    <xsl:template match="/doc" mode="header">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <xsl:apply-templates select="logo" mode="header-logo"/>
                    <xsl:apply-templates select="catalogNav" mode="catalog-nav"/>
                    <div class="header__fill"></div>
                    <xsl:call-template name="search-button"/>
                    <xsl:apply-templates select="login" mode="login"/>
                </div>
            </div>
        </header>

    </xsl:template>

</xsl:stylesheet>