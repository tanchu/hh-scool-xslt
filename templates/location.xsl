<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="city" mode="page-navbar-location-city">
        <div class="navbar__city">
            <a href="{@url}" class="nav__link nav__link_city">
                <xsl:value-of select="."/>
            </a>
        </div>
    </xsl:template>

</xsl:stylesheet>