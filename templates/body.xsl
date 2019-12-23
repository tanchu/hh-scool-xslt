<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="doc" mode="body">
        <body>
            <xsl:apply-templates select="siteNavigation" mode="site-navigation"/>
            <xsl:call-template name="header"/>
            <xsl:apply-templates select="slider" mode="slider"/>
            <xsl:apply-templates select="products" mode="products"/>
            <xsl:apply-templates select="advantages" mode="advantages"/>
            <xsl:call-template name="footer"/>
            <xsl:call-template name="popup-order"/>
        </body>
    </xsl:template>
</xsl:stylesheet>