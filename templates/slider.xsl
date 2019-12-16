<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="slider" mode="slider">
        <section class="slider">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <xsl:apply-templates select="slide" mode="slide" />
                    <xsl:apply-templates select="sliderNavigation" mode="slider-navigation" />
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="slide" mode="slide">
        <div class="column column_s-2 column_m-3 column_l-6">
            <div class="slider__image-container">
                <img class="slider__image" srcset="{image}" />
            </div>
        </div>

        <div class="column column_s-2 column_m-3 column_l-6 be-first">
            <div class="slider__heading-wrapper">
                <h1 class="heading">
                    <xsl:value-of select="heading" />
                </h1>
                <button class="button default-button">
                    <xsl:value-of select="button" />
                </button>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="sliderNavigation" mode="slider-navigation">
        <div class="column column_s-2 column_m-6 column_l-12">
            <div class="slider-nav">
                <xsl:apply-templates select="dot" mode="slider-navigation-dot" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="sliderNavigation/dot" mode="slider-navigation-dot">
        <div>
            <xsl:attribute name="class">
                <xsl:text>slider-nav__dot</xsl:text>
                <xsl:if test = "@active">
                    <xsl:text> slider-nav__dot__active</xsl:text>
                </xsl:if>
            </xsl:attribute>
        </div>
    </xsl:template>

</xsl:stylesheet>