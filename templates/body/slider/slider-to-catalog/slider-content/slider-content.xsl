<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../dots-for-slider/dots-for-slider.xsl"/>

    <xsl:template match="slide[@active='true']" mode="slider-content">
        <div class="slider-content__image-container">
            <div class="column column_s-2 column_m-3 column_l-6">
                <img class="slider-content__image"
                     src="{@img}"
                     srcset="{@img_x}"/>
            </div>
        </div>
        <div class="slider-content-text-button">
            <div class="column column_s-2 column_m-3 column_l-6">
                <div class="slider-content__text-container">
                    <h1 class="heading"><xsl:value-of select="."/></h1>
                </div>
            </div>
            <div class="column column_s-2 column_m-3 column_l-6">
                <div class="slider-content__button-container">
                    <button class="button">Перейти в каталог</button>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>