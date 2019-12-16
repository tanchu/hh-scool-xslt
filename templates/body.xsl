<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="doc" mode="body">
        <body>
            <xsl:apply-templates select="navigationReferences" mode="navigationReferences"/>
            <xsl:apply-templates select="headerReferences" mode="headerReferences"/>
            <xsl:apply-templates select="sliderSections" mode="sliderSections"/>
        </body>
    </xsl:template>
</xsl:stylesheet>