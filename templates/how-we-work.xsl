<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:template match="howWeWork" mode="how-we-work">
            <section class="how-we-work">
                <div class="columns-wrapper">
                    <div class="columns-row">
                        <xsl:apply-templates select="point" mode="how-we-work-point" />
                    </div>
                </div>
            </section>
        </xsl:template>

        <xsl:template match="howWeWork/point" mode="how-we-work-point">
            <div class="column column_s-2 column_m-2 column_l-4">
                <div class="how-we-work__item">
                    <img class="how-we-work-icon">
                        <xsl:attribute name="src">
                            <xsl:value-of select="iconSrc" />
                        </xsl:attribute>
                    </img>
                    <div class="how-we-work__text">
                        <xsl:value-of select="description" />
                    </div>
                </div>
            </div>
        </xsl:template>

</xsl:stylesheet>