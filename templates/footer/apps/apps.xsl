<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="apps" mode="apps">
        <div class="footer-content-app">
            <xsl:apply-templates select="item" mode="apps-item"/>
        </div>
    </xsl:template>


    <xsl:template match="apps/item" mode="apps-item">
        <div class="footer-content-app__icon-container">
            <a href="{@url}">
                <img class="footer-content-app__icon" src="{@img}"/>
            </a>
        </div>
    </xsl:template>

</xsl:stylesheet>