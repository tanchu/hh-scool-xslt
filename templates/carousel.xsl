<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="slide" mode="goods-carousel-section-slide">
        <section class="carousel-section">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="column column_s-2 column_m-3 column_l-6">
                        <h1 class="carousel-section__heading heading heading_level-1">
                            <xsl:value-of select="description"/>
                        </h1>
                        <div class="carousel-section__button">
                            <button class="carousel-section-button">
                                <xsl:value-of select="descriptionCta"/>
                            </button>
                        </div>
                    </div>
                    <div class="column column_s-2 column_m-3 column_l-6 carousel-section__column">
                        <div class="carousel-section__carousel carousel">
                            <img class="carousel__image">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="image/@url"/>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:apply-templates select="description"/>
                                </xsl:attribute>
                            </img>
                        </div>
                    </div>
                    <div class="column column_s-2 column_m-6 column_l-12 carousel-section__column">
                        <div class="carousel-section__pagination pagination">
                            <div class="pagination__dot pagination__dot_active"></div>
                            <div class="pagination__dot"></div>
                            <div class="pagination__dot"></div>
                            <div class="pagination__dot"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>



</xsl:stylesheet>

