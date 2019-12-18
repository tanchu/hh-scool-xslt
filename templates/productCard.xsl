<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="item" mode="product-card-item-popular-goods-section">
        <div class="column column_s-1 column_m-2 column_l-4">
            <div class="product-card">
                <div class="product-card__image-container">
                    <xsl:apply-templates select="image" mode="product-card-image"/>
                </div>
                <xsl:apply-templates select="current()[@sale='true']" mode="product-card-sale-icon"/>
                <xsl:apply-templates select="title" mode="product-card-title"/>
                <xsl:apply-templates select="." mode="product-card-price"/>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="product-card-item-form-section">
        <div class="product-card">
            <div class="product-card__image-container product-card__image-container_form">
                <xsl:apply-templates select="image" mode="product-card-image"/>
            </div>
            <xsl:apply-templates select="current()[@sale='true']" mode="product-card-sale-icon"/>
            <xsl:apply-templates select="title" mode="product-card-title"/>
            <xsl:apply-templates select="." mode="product-card-price"/>
            <xsl:apply-templates select="description" mode="product-card-description"/>
            <div class="product-card__sizes">
                <xsl:apply-templates select="sizes/size" mode="product-card-size"/>
            </div>
        </div>
    </xsl:template>


    <xsl:template match="item" mode="product-card-item-popup-section">
        <div class="product-card">
            <div class="product-card__image-container product-card__image-container_popup">
                <xsl:apply-templates select="image" mode="product-card-image"/>
            </div>
            <xsl:apply-templates select="current()[@sale='true']" mode="product-card-sale-icon"/>
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
            <xsl:if test="@sale = 'true'">
                <div class="product-card__old-price">
                    <xsl:value-of select="price"/>
                </div>
                <xsl:value-of select="salePrice"/>
            </xsl:if>
            <xsl:if test="@sale = 'false'">
                <xsl:value-of select="price"/>
            </xsl:if>
            <xsl:text>&#160;</xsl:text>
            <xsl:apply-templates select="key('currency-cache', price/@currency )" mode="currencyCash"/>
        </div>
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

    <xsl:template match="image" mode="product-card-image">
        <img class="product-card__image">
            <xsl:attribute name="src">
                <xsl:value-of select="@url"/>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="./../title"/>
            </xsl:attribute>
        </img>
    </xsl:template>

    <xsl:template match="size" mode="product-card-size">
        <input class="radio-button-size-item" type="radio" name="size">
            <xsl:if test="@available = 'false'">
                <xsl:attribute name="disabled">
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="value">
                <xsl:value-of select="@type"/>
            </xsl:attribute>
            <xsl:attribute name="id">
                <xsl:value-of select="@type"/>
            </xsl:attribute>
        </input>

        <label class="radio-button-size-item__label">
            <xsl:attribute name="for">
                <xsl:value-of select="@type"/>
            </xsl:attribute>
            <xsl:value-of select="@type"/>
        </label>
    </xsl:template>

</xsl:stylesheet>