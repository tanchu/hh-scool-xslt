<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="mainSlider" mode="dots-for-slider">
        <div class="slider-content-block-dots">
            <xsl:apply-templates select="slide" mode="slider-dot-item"/>
        </div>
    </xsl:template>

    <xsl:template match="slide" mode="slider-dot-item">
        <button data-slide-id="{@id}" >
            <xsl:attribute name="class">
                <xsl:text>slider-content-block-dots__dot-container</xsl:text>
                <xsl:if test="@active">
                    <xsl:text> slider-content-block-dots__dot-container_choosen</xsl:text>
                </xsl:if>
            </xsl:attribute>
        </button>
    </xsl:template>

</xsl:stylesheet>