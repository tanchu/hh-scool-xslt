<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="statisticsInfo" mode="footer-statistics-info-section">
        <div class="columns-row">
            <div class="column column_s-2 column_m-5 column_l-12">
                <div class="footer__copyright-info copyright-info">
                    <xsl:text>&#169; </xsl:text>
                    <span class="copyright-info__year">
                        <xsl:value-of select="copyRightYear"/>
                    </span>
                    <xsl:text> Группа компаний HeadHunter </xsl:text>
                </div>
                <div class="footer__statistics-info statistics-info">
                    <xsl:value-of select="infoText"/>
                </div>
            </div>
        </div>
    </xsl:template>


</xsl:stylesheet>



