<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="templates/head.xsl"/>
    <xsl:import href="templates/body.xsl"/>
    <xsl:import href="templates/siteNavigation.xsl"/>
    <xsl:import href="templates/headerNavigation.xsl"/>
    <xsl:import href="templates/headerReferences.xsl"/>
    <xsl:import href="templates/headerLogo.xsl"/>
    <xsl:import href="templates/headerLoginButton.xsl"/>
    <xsl:import href="templates/sliders.xsl"/>

    <xsl:output method="html"/>

    <xsl:template match="/doc">
        <html>
            <head>
                <xsl:call-template name="head"/>
            </head>
            <body>
                <xsl:apply-templates select="/doc" mode="body"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

