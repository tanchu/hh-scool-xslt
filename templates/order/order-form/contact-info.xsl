<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="login" mode="contact-info">
        <xsl:variable name="state" select="@state"/>
        <label class="form-order__label">Контактное лицо</label>
        <input class="input" type="text" placeholder="ФИО">
            <xsl:if test="$state=1">
                <xsl:attribute name="value">
                    <xsl:value-of select="surname"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="name"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="patronymic"/>
                </xsl:attribute>
            </xsl:if>
        </input>
        <input class="input" type="text" placeholder="Электронная почта">
            <xsl:if test="$state=1">
                <xsl:attribute name="value">
                    <xsl:value-of select="email"/>
                </xsl:attribute>
            </xsl:if>
        </input>
        <div class="form-order-contact-info-number">
            <input class="input form-order-contact-info-number_number-7" type="text" placeholder="+7">
                <xsl:if test="$state=1">
                    <xsl:attribute name="value">
                        <xsl:value-of select="phoneNumber/codeCountry"/>
                    </xsl:attribute>
                </xsl:if>
            </input>
            <input class="input form-order-contact-info-number_number-code" type="text" placeholder="Код">
                <xsl:if test="$state=1">
                    <xsl:attribute name="value">
                        <xsl:value-of select="phoneNumber/code"/>
                    </xsl:attribute>
                </xsl:if>
            </input>
            <input class="input form-order-contact-info-number_number-number" type="text" placeholder="Номер">
                <xsl:if test="$state=1">
                    <xsl:attribute name="value">
                        <xsl:value-of select="phoneNumber/number"/>
                    </xsl:attribute>
                </xsl:if>
            </input>
        </div>
    </xsl:template>

</xsl:stylesheet>