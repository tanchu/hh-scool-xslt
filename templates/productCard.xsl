<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="item" mode="product-card-item">
        <div class="column column_s-1 column_m-2 column_l-4">
            <div class="product-card">
                <div class="product-card__image-container">
                    <xsl:apply-templates select="." mode="product-card-image"/>
                    <xsl:apply-templates select="current()[@sale='true']" mode="product-card-sale-icon"/>
                </div>
                <xsl:apply-templates select="title" mode="product-card-title"/>
                <xsl:apply-templates select="." mode="product-card-price"/>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="product-card-item-order">
        <div class="product-card">
            <div class="product-card__image-container">
                <xsl:apply-templates select="." mode="product-card-image"/>
                <xsl:apply-templates select="current()[@sale='true']" mode="product-card-sale-icon"/>
            </div>
            <xsl:apply-templates select="title" mode="product-card-title"/>
            <xsl:apply-templates select="." mode="product-card-price"/>
            <xsl:apply-templates select="description" mode="product-card-description"/>
            <div class="product-card__sizes">
                <xsl:apply-templates select="sizes/size" mode="product-card-size"/>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="product-card-sale-icon">
        <div class="product-card__sale">sale</div>
    </xsl:template>

    <xsl:template match="item" mode="product-card-price">
        <div class="product-card__price">
            <xsl:apply-templates select="current()[@sale='true']" mode="product-card-sale-price"/>
            <xsl:apply-templates select="current()[@sale='false']" mode="product-card-normal-price"/>
            <xsl:text>&#160;</xsl:text>
            <xsl:apply-templates select="key('currency-cache', price/@currency )" mode="currencyCash"/>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="product-card-normal-price">
        <xsl:value-of select="price"/>
    </xsl:template>

    <xsl:template match="item" mode="product-card-sale-price">
        <div class="product-card__old-price">
            <xsl:value-of select="price"/>
        </div>
        <xsl:value-of select="salePrice"/>
    </xsl:template>

    <xsl:template match="title" mode="product-card-title">
        <div class="product-card__name">
            <xsl:value-of select="."/>
        </div>
    </xsl:template>

    <xsl:template match="description" mode="product-card-description">
        <h4 class="product-card__description">
            <xsl:value-of select="."/>
        </h4>
    </xsl:template>

    <xsl:template match="item" mode="product-card-image">
        <img class="product-card__image" alt="{title}" src="{image/@url}">
        </img>
    </xsl:template>

    <xsl:template match="size" mode="product-card-size">
        <xsl:call-template name="input">
            <xsl:with-param name="class" select="'radio-button-size-item'"/>
            <xsl:with-param name="type" select="'radio'"/>
            <xsl:with-param name="name" select="'size'"/>
            <xsl:with-param name="value" select="@type"/>
            <xsl:with-param name="id" select="@type"/>
            <xsl:with-param name="available" select="@available"/>
        </xsl:call-template>

        <xsl:call-template name="label">
            <xsl:with-param name="class" select="'radio-button-size-item__label'"/>
            <xsl:with-param name="for" select="@type"/>
            <xsl:with-param name="content" select="@type"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="currency" mode="currencyCash">
        <xsl:value-of select="@value"/>
    </xsl:template>

</xsl:stylesheet>