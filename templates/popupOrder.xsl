<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template name="popup-order">
        <div class="popup-order">
            <div class="columns-wrapper">
                <div class="columns-row">
                    <div class="column column_s-2 column_m-3 column_l-7">
                        <xsl:call-template name="form"/>
                    </div>
                    <div class="column column_s-0 column_m-0 column_l-1"/>
                    <div class="column column_s-0 column_m-3 column_l-4">
                        <xsl:apply-templates select="//product[@id='4']" mode="popup-products-item"/>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>