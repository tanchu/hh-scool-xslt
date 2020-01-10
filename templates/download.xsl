<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="download-application" mode="download">
        <div class="footer__application-download">
            <xsl:apply-templates select="item" mode="download_item"/>
        </div>
    </xsl:template>
    <xsl:template match="item" mode="download_item">
        <a href="#">
            <img class="footer__application-download-image" src="{@image}"/>
        </a>
    </xsl:template>
</xsl:stylesheet>