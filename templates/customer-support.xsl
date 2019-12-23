<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="customer-support" mode="customer-support">
        <div class="customer-support">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <xsl:apply-templates select="item" mode="advantages-items"/>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="item" mode="advantages-items">
        <div class="column column_s-2 column_m-2 column_l-4">
            <div class ="customer-support__container">
                <div class="customer-support__image-container">
                    <img class="customer-support__image" src="{image}"/>
                    <div class="customer-support__text">
                        <xsl:value-of select="text"/>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
