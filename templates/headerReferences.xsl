<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="headerReferences" mode="headerNavigation-headerReferences">
        <div class="header__nav">
            <ul class="nav">
                <xsl:apply-templates select="reference" mode="headerNavigation-reference" />
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="reference" mode="headerNavigation-reference">
        <li class="nav__item">
            <a href="{@src}" class="nav__link">
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>

</xsl:stylesheet>

