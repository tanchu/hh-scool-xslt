<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="current-city/current-city.xsl"/>
    <xsl:import href="main-menu/main-menu.xsl"/>

    <xsl:template match="/doc" mode="top">
        <section class="menu-section">
            <div class="columns-wrapper">
                <div class="menu-content">
                    <xsl:apply-templates select="/doc/currentCity" mode="current-city"/>
                    <xsl:apply-templates select="/doc/mainMenu" mode="main-menu"/>
                </div>
            </div>
        </section>
    </xsl:template>

</xsl:stylesheet>