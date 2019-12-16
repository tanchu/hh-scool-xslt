<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="socials" mode="socials">
        <div class="footer-content-social">
            <xsl:apply-templates select="item" mode="social"/>
        </div>
    </xsl:template>


    <xsl:template match="item" mode="social">
        <div class="footer-content-social__icon-container">
            <a href="{@url}">
                <img class="footer-content-social__icon" src="{@img}"/>
            </a>
        </div>
    </xsl:template>

</xsl:stylesheet>