<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="socials" mode="socials">
        <div class="footer__social-network">
            <xsl:apply-templates select="item" mode="social"/>
        </div>
    </xsl:template>
    <xsl:template match="item" mode="social">
        <a href="{@url}">
            <img class="footer__social-network__image" src="{@img}"/>
        </a>
    </xsl:template>
</xsl:stylesheet>