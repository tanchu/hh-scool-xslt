<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="first" mode="header-logo">
        <div class="header__logo">
            <a href="{@url}" class="logo-link"><img class="logo" src="{@img}" alt="{@alt}"/></a>
        </div>
    </xsl:template>

</xsl:stylesheet>