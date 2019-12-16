<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="size" mode="sizes-item">
        <input type="radio" id="{@label}" name="sizes"/><div class="radio-button-text radio-button-text_size"><label for="{@label}"><xsl:value-of select="."/></label></div>
    </xsl:template>

</xsl:stylesheet>