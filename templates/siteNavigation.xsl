<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="siteNavigation" mode="site-navigation">
        <section class="navbar">
            <div class="columns-wrapper">
                <div class="navbar__content">
                    <div class="navbar__button">
                        <button class="button-link">
                            <xsl:value-of select="/doc/userInfo/userCity"/>
                        </button>
                    </div>
                    <nav class="navbar__nav">
                        <ul class="nav navbar__nav-list">
                            <xsl:apply-templates select="siteItem" mode="site-navigation-item"/>
                        </ul>
                    </nav>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="siteItem" mode="site-navigation-item">
        <li class="nav__item navbar__nav-item">
            <a href="{@src}" class="nav__link navbar__nav-link">
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>