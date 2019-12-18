<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="statisticalInformation" mode="footer-statistical">
        <div class="footer-info">
            <div class="columns-row">
                <div class="column column_s-2 column_m-6 column_l-12">
                    <div class="footer-info__copyright">
                        <xsl:text>&#169;</xsl:text>
                        <xsl:value-of select="./../copyRightYear"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="./../copyRightHeading"/>
                    </div>
                    <div class="footer-info__today">
                        <xsl:text>Сегодня на сайте </xsl:text>
                        <xsl:call-template name="endingOfWord" >
                            <xsl:with-param name="value" select="countOfVacancies/@value"/>
                            <xsl:with-param name="one" select="countOfVacancies/@one"/>
                            <xsl:with-param name="two" select="countOfVacancies/@two"/>
                            <xsl:with-param name="five" select="countOfVacancies/@five"/>
                            <xsl:with-param name="number" select="countOfVacancies"/>
                        </xsl:call-template>
                        <xsl:text> , </xsl:text>
                        <xsl:value-of select="countOfResumes"/>

                        <xsl:text> резюме, </xsl:text>

                        <xsl:call-template name="endingOfWord" >
                            <xsl:with-param name="value" select="countOfCompanies/@value"/>
                            <xsl:with-param name="one" select="countOfCompanies/@one"/>
                            <xsl:with-param name="two" select="countOfCompanies/@two"/>
                            <xsl:with-param name="five" select="countOfCompanies/@five"/>
                            <xsl:with-param name="number" select="countOfCompanies"/>
                        </xsl:call-template>

                        <xsl:text> и за неделю </xsl:text>

                        <xsl:call-template name="endingOfWord" >
                            <xsl:with-param name="value" select="countOfInvitations/@value"/>
                            <xsl:with-param name="one" select="countOfInvitations/@one"/>
                            <xsl:with-param name="two" select="countOfInvitations/@two"/>
                            <xsl:with-param name="five" select="countOfInvitations/@five"/>
                            <xsl:with-param name="number" select="countOfInvitations"/>
                        </xsl:call-template>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template name="endingOfWord">
        <xsl:param name="value"/>
        <xsl:param name="one"/>
        <xsl:param name="two"/>
        <xsl:param name="five"/>
        <xsl:param name="number"/>

        <xsl:variable name="n" select="$value mod 100"/>
        <xsl:variable name="n1" select="$n mod 10"/>

        <xsl:value-of select="$number"/>
        <xsl:text> </xsl:text>
        <xsl:choose>
            <xsl:when test="($n &gt; 10) and ($n &lt; 20)">
                <xsl:value-of select="$five"/>
            </xsl:when>
            <xsl:when test="($n1 &gt; 1) and ($n1 &lt; 5)">
                <xsl:value-of select="$two"/>
            </xsl:when>
            <xsl:when test="$n1 = 1">
                <xsl:value-of select="$one"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$five"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
