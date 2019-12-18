<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="templates/head.xsl"/>
    <xsl:import href="templates/body.xsl"/>
    <xsl:import href="templates/navbar.xsl"/>
    <xsl:import href="templates/location.xsl"/>
    <xsl:import href="templates/siteNavigation.xsl"/>
    <xsl:import href="templates/header.xsl"/>
    <xsl:import href="templates/logo.xsl"/>
    <xsl:import href="templates/goodsNavigation.xsl"/>
    <xsl:import href="templates/buttonLogin.xsl"/>
    <xsl:import href="templates/carousel.xsl"/>
    <xsl:import href="templates/popularGoods.xsl"/>
    <xsl:import href="templates/currencyCash.xsl"/>
    <xsl:import href="templates/features.xsl"/>
    <xsl:import href="templates/footer.xsl"/>
    <xsl:import href="templates/socialNetworks.xsl"/>
    <xsl:import href="templates/mobileApps.xsl"/>
    <xsl:import href="templates/statisticsInfo.xsl"/>
    <xsl:import href="templates/form.xsl"/>
    <xsl:import href="templates/productCard.xsl"/>
    <xsl:import href="templates/popup.xsl"/>
    <xsl:import href="templates/declination.xsl"/>

    <xsl:output method="html" encoding = "utf-8"/>

    <xsl:template match="/doc">
        <html>
            <xsl:call-template name="head"/>
            <xsl:apply-templates select="/doc" mode="body"/>
        </html>
    </xsl:template>

</xsl:stylesheet>

