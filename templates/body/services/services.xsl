<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="services-item.xsl"/>

    <xsl:template match="/doc" mode="services">
        <section class="services-section">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="services-content">
                        <xsl:apply-templates select="services" mode="services-column"/>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>


    <xsl:template match="item" mode="services-column">
        <div class="column column_s-2 column_m-2 column_l-4">
            <xsl:apply-templates select="." mode="services-item"/>
        </div>
    </xsl:template>


</xsl:stylesheet>