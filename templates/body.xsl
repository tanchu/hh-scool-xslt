<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="doc" mode="body">
        <body>
            <xsl:apply-templates select="navigation" mode="page-navbar-section"/>
            <xsl:call-template name="header"/>
            <xsl:apply-templates select="pageSliders" mode="goods-carousel-section"/>
            <xsl:apply-templates select="popularGoods" mode="popular-goods-section"/>
            <xsl:apply-templates select="features" mode="features-section"/>
            <xsl:call-template name="footer"/>
            <xsl:call-template name="form"/>
            <xsl:call-template name="popup"/>
        </body>
    </xsl:template>
</xsl:stylesheet>