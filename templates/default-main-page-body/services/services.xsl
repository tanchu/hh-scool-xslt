<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/doc" mode="services">
        <section class="services-section">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="services-content">
                        <xsl:apply-templates select="/doc/services" mode="services-item"/>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="services/item" mode="services-item">
        <div class="services-content-block column column_s-2 column_m-2 column_l-4">
            <div class="services-content-block__icon-container">
                <img class="services-content-block__icon" src="{@url}"/>
            </div>
            <div class="services-content-block__text-container">
                <xsl:value-of select="."></xsl:value-of>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>