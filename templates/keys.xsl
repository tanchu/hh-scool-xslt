<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:key name="keyCurrency" match="doc/currency" use="@name" />
    <xsl:key name="keyIsAuthenticated" match="doc" use="@name" />

</xsl:stylesheet>