<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="sliders/slider" mode="sliders">
        <section class="slider-section">
            <div class="columns-wrapper">
                <xsl:apply-templates select="slide" mode="sliders-slide" />

                <div class="slider-dots">
                    <ul class="slider-dots__list">
                        <xsl:apply-templates select="slide" mode="sliders-slide-dots" />
                    </ul>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="slide[@isActive='true']" mode="sliders-slide">
        <div class="slider-card slider-card_active">
            <div class="slider-card__description">
                <h1 class="heading slider-card__description-title">
                    <xsl:value-of select="description" />
                </h1>
                <button class="button slider-card__description-button">Перейти в&#160;каталог</button>
            </div>
            <div class="slider-card__image-container">
                <img class="slider-card__image" >
                    <xsl:attribute name="src" >
                        <xsl:value-of select="productImage/@src" />
                    </xsl:attribute>
                    <xsl:attribute name="alt" >
                        <xsl:value-of select="productImage/@alt" />
                    </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="slide" mode="sliders-slide">
        <div class="slider-card">
            <div class="slider-card__description">
                <h1 class="heading slider-card__description-title">
                    <xsl:value-of select="description" />
                </h1>
                <button class="button slider-card__description-button">Перейти в&#160;каталог</button>
            </div>
            <div class="slider-card__image-container">
                <img class="slider-card__image" >
                    <xsl:attribute name="src" >
                        <xsl:value-of select="productImage/@src" />
                    </xsl:attribute>
                    <xsl:attribute name="alt" >
                        <xsl:value-of select="productImage/@alt" />
                    </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="slide[@isActive='true']" mode="sliders-slide-dots">
        <li class="slider-dots__item slider-dots__item_active"></li>
    </xsl:template>

    <xsl:template match="slide" mode="sliders-slide-dots">
        <li class="slider-dots__item"></li>
    </xsl:template>


</xsl:stylesheet>