<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="doc" mode="body">
        <body>
            <xsl:apply-templates select="siteNavigation" mode="siteNavigation"/>
            <xsl:apply-templates select="headerNavigation" mode="headerNavigation"/>
            <xsl:apply-templates select="sliders" mode="sliders"/>
        </body>
    </xsl:template>
</xsl:stylesheet>