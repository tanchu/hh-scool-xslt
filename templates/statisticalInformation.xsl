<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/doc" mode="footer-statistical">
        <div class="footer-info">
            <div class="columns-row">
                <div class="column column_s-2 column_m-6 column_l-12">
                    <div class="footer-info__copyright">
                        <xsl:text>&#169;</xsl:text>
                        <xsl:value-of select="copyRightYear"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="copyRightHeading"/>
                    </div>
                    <div class="footer-info__today">
                        <xsl:text>Сегодня на сайте </xsl:text>
                        <xsl:call-template name="declension">
                            <xsl:with-param name="value" select="statisticalInformation/countOfVacancies/@value"/>
                            <xsl:with-param name="one" select="'вакансия'"/>
                            <xsl:with-param name="some" select="'вакансии'"/>
                            <xsl:with-param name="many" select="'вакансий'"/>
                            <xsl:with-param name="number" select="statisticalInformation/countOfVacancies"/>
                        </xsl:call-template>
                        <xsl:text>, </xsl:text>
                        <xsl:value-of select="statisticalInformation/countOfResumes"/>
                        <xsl:text> резюме, </xsl:text>
                        <xsl:call-template name="declension" >
                            <xsl:with-param name="value" select="statisticalInformation/countOfCompanies/@value"/>
                            <xsl:with-param name="one" select="'компания'"/>
                            <xsl:with-param name="some" select="'компании'"/>
                            <xsl:with-param name="many" select="'компаний'"/>
                            <xsl:with-param name="number" select="statisticalInformation/countOfCompanies"/>
                        </xsl:call-template>
                        <xsl:text> и за неделю </xsl:text>
                        <xsl:call-template name="declension">
                            <xsl:with-param name="value" select="statisticalInformation/countOfInvitations/@value"/>
                            <xsl:with-param name="one" select="'приглашение'"/>
                            <xsl:with-param name="some" select="'приглашения'"/>
                            <xsl:with-param name="many" select="'приглашений'"/>
                            <xsl:with-param name="number" select="statisticalInformation/countOfInvitations"/>
                        </xsl:call-template>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template name="declension">
        <xsl:param name="value"/>
        <xsl:param name="one"/>
        <xsl:param name="some"/>
        <xsl:param name="many"/>
        <xsl:param name="number"/>
        <xsl:variable name="n" select="$value mod 100"/>
        <xsl:variable name="n1" select="$n mod 10"/>
        <xsl:value-of select="$number"/>
        <xsl:text> </xsl:text>
        <xsl:choose>
            <xsl:when test="($n &gt; 10) and ($n &lt; 20)">
                <xsl:value-of select="$many"/>
            </xsl:when>
            <xsl:when test="($n1 &gt; 1) and ($n1 &lt; 5)">
                <xsl:value-of select="$some"/>
            </xsl:when>
            <xsl:when test="$n1 = 1">
                <xsl:value-of select="$one"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$many"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
