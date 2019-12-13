<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="navigationBar" mode="navbar">
        <section class="navbar">
            <div class="columns-wrapper">
                <div class="navbar__content">
                    <xsl:apply-templates select="userLocation/city" mode="navbar-userLocation-city"/>
                    <div class="navbar__fill"></div>
                    <xsl:apply-templates select="navigationContent" mode="navbar-navigationContent"/>
                </div>
            </div>
        </section>
    </xsl:template>

</xsl:stylesheet>