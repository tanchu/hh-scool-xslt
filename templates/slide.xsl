<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="slide" mode="slide-description">

        <xsl:apply-templates select="description"/>

    </xsl:template>

    <xsl:template match="description">
        <xsl:value-of select="."/>
    </xsl:template>


    <xsl:template match="slide" mode="slide-image">

        <xsl:apply-templates select="image"/>

    </xsl:template>

    <xsl:template match="image">
        <div class="carousel-section__carousel carousel">
            <img>
                <xsl:attribute name="class">
                    <xsl:text>carousel__image</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="src">
                    <xsl:text>images/</xsl:text>
                    <xsl:value-of select="."/>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:apply-templates select="./../description"/>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>


</xsl:stylesheet>