<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="logo/second" mode="second-logo">
        <div class="footer-content-logo">
            <div class="footer-content-logo__icon-container">
                <img class="footer-content-logo__icon" src="{@img}"/>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>