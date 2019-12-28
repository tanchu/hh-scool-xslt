<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="slider" mode="slider">
        <section class="slider">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="slider-wrapper">
                        <xsl:apply-templates select="slide" mode="slide" />
                    </div>
                    <xsl:apply-templates select="." mode="slider-navigation" />
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="slide" mode="slide">
        <div>
            <xsl:attribute name="class">
                <xsl:text>slide</xsl:text>
                <xsl:if test = "@active">
                    <xsl:text> slide__active</xsl:text>
                </xsl:if>
            </xsl:attribute>
            <div class="column column_s-2 column_m-3 column_l-6">
                <div class="slide__image-container">
                    <img class="slide__image" src="{defaultImage}">
                        <xsl:attribute name="scrset">
                            <xsl:apply-templates select="imgset" mode="slide-imgset" />
                        </xsl:attribute>
                    </img>
                </div>
            </div>
            <div class="column column_s-2 column_m-3 column_l-6 be-first">
                <div class="slide__heading-wrapper">
                    <h1 class="heading">
                        <xsl:value-of select="heading" />
                    </h1>
                    <button class="button default-button">
                        <xsl:value-of select="button" />
                    </button>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="slider" mode="slider-navigation">
        <div class="columns-row">
            <div class="column column_s-2 column_m-6 column_l-12">
                <div class="slider-nav">
                    <xsl:apply-templates select="slide" mode="slider-navigation-dot" />
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="slide" mode="slider-navigation-dot">
        <div>
            <xsl:attribute name="class">
                <xsl:text>slider-nav__dot</xsl:text>
                <xsl:if test = "@active">
                    <xsl:text> slider-nav__dot__active</xsl:text>
                </xsl:if>
            </xsl:attribute>
        </div>
    </xsl:template>

    <xsl:template match="slide/imgset" mode="slide-imgset">
        <xsl:apply-templates select="img" mode="slide-img" />
    </xsl:template>

    <xsl:template match="imgset/img" mode="slide-img">
        <xsl:value-of select="." />
        <xsl:if test = "position() != last()">
            <xsl:text>, </xsl:text>
        </xsl:if>
    </xsl:template>


</xsl:stylesheet>