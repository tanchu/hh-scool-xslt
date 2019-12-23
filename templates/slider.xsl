<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="slider" mode="slider">
        <section class="slider-section">
            <div class="columns-wrapper">
                <xsl:apply-templates select="slide" mode="slider-slide"/>
                <div class="slider-dots">
                    <ul class="slider-dots__list">
                        <xsl:apply-templates select="slide" mode="slider-slide-dots"/>
                    </ul>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="slide" mode="slider-slide">
        <div>
            <xsl:attribute name="class">
                <xsl:if test="@isActive = 'false'">
                    <xsl:text>slider-card</xsl:text>
                </xsl:if>
                <xsl:if test="@isActive = 'true'">
                    <xsl:text>slider-card slider-card_active</xsl:text>
                </xsl:if>
            </xsl:attribute>
            <div class="slider-card__description">
                <h1 class="heading slider-card__description-title">
                    <xsl:value-of select="description"/>
                </h1>
                <button class="button slider-card__description-button">Перейти в&#160;каталог</button>
            </div>
            <div class="slider-card__image-container">
                <img class="slider-card__image" src="{productImage/@src}" alt="{productImage/@alt}"/>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="slide" mode="slider-slide-dots">
        <li>
            <xsl:attribute name="class">
                <xsl:if test="@isActive = 'false'">
                    <xsl:text>slider-dots__item</xsl:text>
                </xsl:if>
                <xsl:if test="@isActive = 'true'">
                    <xsl:text>slider-dots__item slider-dots__item_active</xsl:text>
                </xsl:if>
            </xsl:attribute>
        </li>
    </xsl:template>
</xsl:stylesheet>