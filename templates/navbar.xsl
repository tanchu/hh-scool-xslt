<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="navigation" mode="page-navbar-section">
        <section class="navbar">
            <div class="columns-wrapper">
                <div class="navbar__content">
                    <xsl:apply-templates select="./../location/city" mode="page-navbar-location-city"/>
                    <div class="navbar__fill"></div>
                    <xsl:apply-templates select="siteNavigation" mode="page-navbar-site-navigation"/>
                </div>
            </div>
        </section>
    </xsl:template>

</xsl:stylesheet>

