<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="features" mode="features-section">
        <section class="features-section">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <xsl:apply-templates select="feature" mode="feature-item"/>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="feature" mode="feature-item">
        <div class="column column_s-2 column_m-2 column_l-4">
            <div class="feature features-section__feature">
                <img class="feature__image" src="{image/@url}" alt="{description}">
                </img>
                <div class="feature__description">
                    <xsl:value-of select="description"/>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>



