<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="logo" mode="header-logo">
        <div class="header__logo">
            <a href="{@url}">
                <img class="logo" src="{@srcHeader}" alt="hh.ru" />
            </a>
        </div>
    </xsl:template>

    <xsl:template match="logo" mode="footer-logo">
        <div class="column column_l-4">
            <div class="footer__logo">
                <a href="{@url}">
                    <img class="logo" src="{@srcFooter}" alt="hh.ru" />
                </a>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>