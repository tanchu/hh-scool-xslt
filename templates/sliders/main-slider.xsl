<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="dots-for-slider.xsl"/>

    <xsl:template match="mainSlider" mode="main-slider">
        <section class="slider-section">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="slider-wrapper">
                        <xsl:apply-templates select="slide" mode="slides"/>
                    </div>
                </div>
                <div class="columns-row">
                    <xsl:apply-templates select="." mode="dots-for-slider"/>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="slide" mode="slides">
        <div data-slide-id="{@id}" >
            <xsl:attribute name="class">
                <xsl:text>slider-content</xsl:text>
                <xsl:if test="@active">
                    <xsl:text> slider-content_active </xsl:text>
                </xsl:if>
            </xsl:attribute>
            <div class="slider-content__image-container column column_s-2 column_m-3 column_l-6">
                <img class="slider-content__image" src="{image}" srcset="{image} 1x, {image_2x} 2x, {image_3x} 3x"/>
            </div>
            <div class="slider-content-text-button">
                <div class="slider-content__text-container column column_s-2 column_m-3 column_l-6">
                    <h1 class="heading">
                        <xsl:value-of select="text"/>
                    </h1>
                </div>
                <div class="slider-content__button-container column column_s-2 column_m-3 column_l-6">
                    <button class="button">
                        <xsl:value-of select="button"/>
                    </button>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>