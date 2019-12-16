<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="currentYear" mode="copyright">
    <div class="footer-content__copyright">
        © <xsl:value-of select="."></xsl:value-of> Группа компаний HeadHunter
    </div>
</xsl:template>

</xsl:stylesheet>