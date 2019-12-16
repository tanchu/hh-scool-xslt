<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="headerNavigation" mode="headerNavigation">
        <header class="header">
            <div class="columns-wrapper">
                <div class="header__content">
                    <xsl:call-template name="header-logo" />
                    <xsl:apply-templates select="headerReferences" mode="headerNavigation-headerReferences" />
                    <div class="header__fill"></div>
                    <xsl:apply-templates select="/doc/userInfo" mode="headerNavigation-headerLoginButton" />
                    <div class="header__button header__button_menu">
                        <button class="header-button-icon header-button-icon_menu">Меню</button>
                    </div>
                </div>
            </div>
        </header>
    </xsl:template>

</xsl:stylesheet>