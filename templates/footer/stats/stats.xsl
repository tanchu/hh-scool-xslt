<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="stats" mode="stats">
        <div class="footer-content__stats">
            Сегодня на сайте
            <xsl:value-of select="vacansies"></xsl:value-of>вакансий,
            <xsl:value-of select="resumes"></xsl:value-of>резюме,
            <xsl:value-of select="companies"></xsl:value-of>компании и за неделю
            <xsl:value-of select="invitations"></xsl:value-of>приглашения
        </div>
    </xsl:template>

</xsl:stylesheet>