<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="slider-to-catalog/slider-content/slider-content.xsl"/>

    <xsl:template match="sliderToCatalog" mode="slider-to-catalog">

        <section class="slider-section">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="slider-content">
                        <xsl:apply-templates select="." mode="slider-content"/>
                        <xsl:apply-templates select="." mode="dots-for-slider"/>
                    </div>
                </div>
            </div>
        </section>

    </xsl:template>

</xsl:stylesheet>