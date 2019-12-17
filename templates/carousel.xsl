<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="pageSliders" mode="goods-carousel-section">
        <section class="carousel-section">
            <div class="columns-wrapper">
                <xsl:apply-templates select="slide" mode="carousel-section-slide"/>
                <div class="carousel-section__pagination">
                    <div class=" pagination">
                        <xsl:apply-templates select="slide" mode="carousel-section-pagination"/>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>



    <xsl:template match="slide" mode="carousel-section-slide">
        <div>
            <xsl:attribute name="class">
                <xsl:text>carousel-section__slide </xsl:text>
            </xsl:attribute>
            <xsl:if test="@active = 'false'">
                <xsl:attribute name="class">
                    <xsl:text>carousel-section__slide carousel-section__slide_hide</xsl:text>
                </xsl:attribute>
            </xsl:if>

            <div class="columns-row">
                <div class="column column_s-2 column_m-3 column_l-6">
                    <h1 class="carousel-section__heading heading heading_level-1">
                        <xsl:value-of select="description"/>
                    </h1>
                    <div class="carousel-section__button">
                        <button class="carousel-section-button">
                            <xsl:value-of select="descriptionCallToAction"/>
                        </button>
                    </div>
                </div>
                <div class="column column_s-2 column_m-3 column_l-6 carousel-section__column">
                    <div class="carousel-section__image-container">
                        <img class="carousel-section__image">
                            <xsl:attribute name="src">
                                <xsl:value-of select="image/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:apply-templates select="description"/>
                            </xsl:attribute>
                        </img>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>



    <xsl:template match="slide" mode="carousel-section-pagination">
        <div>
            <xsl:attribute name="class">
                <xsl:text>pagination__dot </xsl:text>
            </xsl:attribute>
            <xsl:if test="@active = 'true'">
                <xsl:attribute name="class">
                    <xsl:text>pagination__dot pagination__dot_active</xsl:text>
                </xsl:attribute>
            </xsl:if>
        </div>
    </xsl:template>

</xsl:stylesheet>

