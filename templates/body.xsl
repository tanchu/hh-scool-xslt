<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="doc" mode="body">
        <body>
            <xsl:apply-templates select="siteNavigation" mode="site-navigation"/>
            <xsl:apply-templates select="headerNavigation" mode="header"/>
            <xsl:apply-templates select="sliders" mode="sliders"/>
            <xsl:apply-templates select="products" mode="products"/>
            <xsl:apply-templates select="advantages" mode="advantages"/>
            <xsl:apply-templates select="footer" mode="footer"/>
            <xsl:apply-templates select="popupOrder" mode="popup-order"/>
        </body>
    </xsl:template>
</xsl:stylesheet>