<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="templates/head.xsl"/>
    <xsl:import href="templates/body.xsl"/>
    <xsl:import href="templates/navbar.xsl"/>
    <xsl:import href="templates/location.xsl"/>
    <xsl:import href="templates/siteNavigation.xsl"/>

    <xsl:output method="html" encoding = "utf-8"/>

    <xsl:template match="/doc">
        <html>
            <xsl:call-template name="head"/>
            <xsl:apply-templates select="/doc" mode="body"/>
        </html>
    </xsl:template>

</xsl:stylesheet>

