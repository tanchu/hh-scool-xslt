<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:key name="key-currency" match="doc/userInfo/userCurrency" use="@type" />

</xsl:stylesheet>