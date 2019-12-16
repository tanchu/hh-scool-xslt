<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="second" mode="second-logo">
        <div class="footer-content-logo">
            <div class="footer-content-logo__icon-container">
                <a href="{@url}"> <img class="footer-content-logo__icon" src="{@img}"/></a>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>