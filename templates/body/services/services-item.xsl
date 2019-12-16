<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="item" mode="services-item">
        <div class="services-content-block">
            <div class="services-content-block__icon-container">
                <img class="services-content-block__icon" src="{@img}"/>
            </div>
            <div class="services-content-block__text-container">
                <xsl:value-of select="."></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>