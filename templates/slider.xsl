<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/doc/sliders" mode="slider">
        <div class="slider">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="slider-wrapper">
                        <xsl:apply-templates select="slide" mode="slider-content"/>
                    </div>
                </div>
                <div class="columns-row">
                    <div class="slider__ellipse-conteiner js-slide-buttons">
                        <xsl:apply-templates select="slide" mode="slider-point"/>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="slide[position()=1]" mode="slider-point">
        <button data-slide-id="1" class="slider__ellipse slider__ellipse__active  js-slide-button"></button>
    </xsl:template>
    <xsl:template match="slide" mode="slider-point">
        <button data-slide-id="position()" class="slider__ellipse  js-slide-button"></button>
    </xsl:template>
    <xsl:template match="slide" mode="slider-content">
        <div data-slide-id="1" class="slider__carousel slider__carousel__active js-slide">
            <div class="column column_s-2 column_m-3 column_l-6">
                <div class="slider__image">
                    <img class="slider__image" src="{image/@src}"/>
                </div>
            </div>
            <div class="column column_s-2 column_m-3 column_l-6">
                <div class="slider__clothes">
                    <xsl:value-of select="title"/>
                </div>
                <button class="button slider__button">
                    Перейти в каталог
                </button>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>



