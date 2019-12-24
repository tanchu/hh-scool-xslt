<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="numOfVacancies | numOfCompanies" mode="declination-vacancy-company">
        <xsl:param name="wordBase" select="'empty'"/>

        <xsl:variable name="currentNumber" select="."/>

        <xsl:value-of select="$currentNumber"/>
        <xsl:text>&#160;</xsl:text>

        <!-- If length of current number == 1 -->
        <xsl:if test=" string-length($currentNumber) = 1">
            <xsl:variable name="lastChar" select="substring($currentNumber, string-length($currentNumber), 1 )"/>
            <xsl:if test=" $lastChar = '0'  ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>ий</xsl:text>
            </xsl:if>
            <xsl:if test=" $lastChar = '1' ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>ия</xsl:text>
            </xsl:if>
            <xsl:if test=" ($lastChar &gt;= '2') and ($lastChar &lt;= '4') ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>ии</xsl:text>
            </xsl:if>
            <xsl:if test=" ($lastChar &gt;= '5') and ($lastChar &lt;= '9') ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>ий</xsl:text>
            </xsl:if>
        </xsl:if>

        <!-- If length of current number >=2 -->
        <xsl:if test=" string-length($currentNumber) &gt;= 2">

            <xsl:variable name="lastChars" select="substring($currentNumber, string-length($currentNumber) - 1, 2 )"/>

            <!-- if two last characters are >=10 or <= 19 -->
            <xsl:if test=" ($lastChars &gt;= '10') and ($lastChars &lt;= '19') ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>ий</xsl:text>
            </xsl:if>

            <!-- if two last characters are >=20 or start with 0-->
            <xsl:if test=" ($lastChars &gt;= '20') or starts-with( $lastChars , '0' )">
                <xsl:variable name="lastChar" select="substring($currentNumber, string-length($currentNumber), 2 )"/>
                <xsl:if test=" $lastChar = '0'  ">
                    <xsl:value-of select="$wordBase"/>
                    <xsl:text>ий</xsl:text>
                </xsl:if>
                <xsl:if test=" $lastChar = '1' ">
                    <xsl:value-of select="$wordBase"/>
                    <xsl:text>ия</xsl:text>
                </xsl:if>
                <xsl:if test=" ($lastChar &gt;= '2') and ($lastChar &lt;= '4') ">
                    <xsl:value-of select="$wordBase"/>
                    <xsl:text>ии</xsl:text>
                </xsl:if>
                <xsl:if test=" ($lastChar &gt;= '5') and ($lastChar &lt;= '9') ">
                    <xsl:value-of select="$wordBase"/>
                    <xsl:text>ий</xsl:text>
                </xsl:if>
            </xsl:if>

        </xsl:if>

    </xsl:template>

    <xsl:template match="numOfInvitations" mode="declination-invitation">
        <xsl:param name="wordBase" select="'empty'"/>

        <xsl:variable name="currentNumber" select="."/>

        <xsl:value-of select="$currentNumber"/>
        <xsl:text>&#160;</xsl:text>

        <!-- If length of current number == 1 -->
        <xsl:if test=" string-length($currentNumber) = 1">
            <xsl:variable name="lastChar" select="substring($currentNumber, string-length($currentNumber), 1 )"/>
            <xsl:if test=" $lastChar = '0'  ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>ий</xsl:text>
            </xsl:if>
            <xsl:if test=" $lastChar = '1' ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>иe</xsl:text>
            </xsl:if>
            <xsl:if test=" ($lastChar &gt;= '2') and ($lastChar &lt;= '4') ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>ия</xsl:text>
            </xsl:if>
            <xsl:if test=" ($lastChar &gt;= '5') and ($lastChar &lt;= '9') ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>ий</xsl:text>
            </xsl:if>
        </xsl:if>

        <!-- If length of current number >=2 -->
        <xsl:if test=" string-length($currentNumber) &gt;= 2">

            <xsl:variable name="lastChars" select="substring($currentNumber, string-length($currentNumber) - 1, 2 )"/>

            <!-- if two last characters are >=10 or <= 19 -->
            <xsl:if test=" ($lastChars &gt;= '10') and ($lastChars &lt;= '19') ">
                <xsl:value-of select="$wordBase"/>
                <xsl:text>ий</xsl:text>
            </xsl:if>

            <!-- if two last characters are >=20 or start with 0-->
            <xsl:if test=" ($lastChars &gt;= '20') or starts-with( $lastChars , '0' )">
                <xsl:variable name="lastChar" select="substring($currentNumber, string-length($currentNumber), 2 )"/>
                <xsl:if test=" $lastChar = '0'  ">
                    <xsl:value-of select="$wordBase"/>
                    <xsl:text>ий</xsl:text>
                </xsl:if>
                <xsl:if test=" $lastChar = '1' ">
                    <xsl:value-of select="$wordBase"/>
                    <xsl:text>ие</xsl:text>
                </xsl:if>
                <xsl:if test=" ($lastChar &gt;= '2') and ($lastChar &lt;= '4') ">
                    <xsl:value-of select="$wordBase"/>
                    <xsl:text>ия</xsl:text>
                </xsl:if>
                <xsl:if test=" ($lastChar &gt;= '5') and ($lastChar &lt;= '9') ">
                    <xsl:value-of select="$wordBase"/>
                    <xsl:text>ий</xsl:text>
                </xsl:if>
            </xsl:if>

        </xsl:if>

    </xsl:template>

    <xsl:template match="numOfResumes" mode="declination-resume">
        <xsl:value-of select="."/>
        <xsl:text>&#160;резюме</xsl:text>
    </xsl:template>

</xsl:stylesheet>
