<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template math="statistics" mode="statistics">
        <div class="footer__text">
            <xsl:apply-templates select="statistics" mode="text"/>
        </div>
    </xsl:template>

    <xsl:template math="statistics" mode="text">
        <xsl:text>©</xsl:text>
        <xsl:value-of select="year"/>
        <xsl:text>Группа команий HeadHunter Сегодня на сайте </xsl:text>
        <xsl:value-of select="vacancy"/>
        <xsl:text>вакансий,</xsl:text>
        <xsl:value-of select="resume"/>
        <xsl:text> резюме,</xsl:text>
        <xsl:value-of select="company"/>
        <xsl:text>компании и за неделю</xsl:text>
        <xsl:value-of select="invite"/>
        <xsl:text>приглашения</xsl:text>
    </xsl:template>
</xsl:stylesheet> 