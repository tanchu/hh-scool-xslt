<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="common/close-button/close-button.xsl" />
    <xsl:import href="keys.xsl" />

    <xsl:template match="popularProducts" mode="popular-products">
        <section class="content-section">
            <div class="columns-wrapper">
                <h2 class="heading heading_level-2">Популярные товары</h2>
                <div class="columns-row">
                    <xsl:apply-templates select="product" mode="product-column" />
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="product" mode="product-column">
        <div class="column column_s-1 column_m-2 column_l-4">
            <xsl:apply-templates select="." mode="product" />
        </div>
    </xsl:template>

    <xsl:template match="product" mode="ordered-product-form">
        <div class="column column_s-2 column_m-3 column_l-5">
            <div class="product-card-form-wrapper">
                <xsl:apply-templates select="." mode="product" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="product" mode="product">
        <div class="product-card">
            <div class="product-card__image-container">
                <img class="product-card__image" src="{img}" />
                <xsl:apply-templates select="oldPrice" mode="sale" />
            </div>
            <div class="product-card__name">
                <xsl:value-of select="name" />
            </div>
            <div class="product-card__price">
                <xsl:apply-templates select="oldPrice" mode="old-price" />
                <xsl:value-of select="price" />
                <xsl:value-of select="key('keyCurrency','RUR')" />
            </div>
            <xsl:apply-templates select="description" mode="description" />
            <xsl:apply-templates select="sizes" mode="product-sizes" />
        </div>
    </xsl:template>

    <xsl:template match="product" mode="ordered-product">
        <div class="product-card">
            <div class="product-card__image-container">
                <img class="product-card__image" src="{img}" />
                <xsl:apply-templates select="oldPrice" mode="sale" />
                <xsl:call-template name="close-button-product" />
            </div>
            <div class="product-card__name">
                <xsl:value-of select="name" />
            </div>
            <div class="product-card__price">
                <xsl:apply-templates select="oldPrice" mode="old-price" />
                <xsl:value-of select="price" />
                <xsl:value-of select="key('keyCurrency','RUR')"/>

            </div>
            <xsl:apply-templates select="description" mode="description" />
            <xsl:apply-templates select="sizes" mode="product-sizes" />
        </div>
    </xsl:template>

    <xsl:template match="description" mode="description">
        <div class="product-card__description">
            <xsl:value-of select="." />
        </div>
    </xsl:template>

    <xsl:template match="oldPrice" mode="sale">
        <div class="product-card__sale">sale</div>
    </xsl:template>

    <xsl:template match="oldPrice" mode="old-price">
        <span class="product-card__old-price">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

    <xsl:template match="sizes" mode="product-sizes">
        <div class="product-card__sizes">
            <xsl:apply-templates select="size" mode="product-size" />
        </div>
    </xsl:template>

    <xsl:template match="sizes/size" mode="product-size">
        <div class="product-card__size">
            <label class="radio-box">
                <input class="radio-box__input" type="radio" name="size" />
                <span class="radio-box__text">
                    <xsl:value-of select="." />
                </span>
            </label>
        </div>
    </xsl:template>

</xsl:stylesheet>