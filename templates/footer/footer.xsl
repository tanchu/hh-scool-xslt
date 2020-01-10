<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/doc" mode="footer">
        <footer class="footer">
            <div class="columns-wrapper">
                <div class="footer-content">
                    <div class="footer-content-social-app-logo">
                        <div class="columns-row">
                            <div class="column column_s-2 column_m-3 column_l-4">
                               <xsl:apply-templates select="socials" mode="socials"/>
                            </div>
                            <div class="column column_s-2 column_m-3 column_l-4">
                                <xsl:apply-templates select="apps" mode="apps"/>
                            </div>
                            <div class="column column_s-2 column_m-3 column_l-4">
                                <xsl:apply-templates select="logo" mode="footer-logo"/>
                            </div>
                        </div>
                    </div>
                    <div class="footer-content__line"></div>
                    <xsl:apply-templates select="currentYear" mode="copyright"/>
                    <xsl:apply-templates select="stats" mode="stats"/>
                </div>
            </div>
        </footer>
    </xsl:template>

    <xsl:template match="socials" mode="socials">
        <div class="footer-content-social">
            <xsl:apply-templates select="item" mode="social"/>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="social">
        <div class="footer-content-social__icon-container">
            <a href="{@url}">
                <img class="footer-content-social__icon" src="{@img}"/>
            </a>
        </div>
    </xsl:template>

    <xsl:template match="apps" mode="apps">
        <div class="footer-content-app">
            <xsl:apply-templates select="item" mode="apps-item"/>
        </div>
    </xsl:template>

    <xsl:template match="item" mode="apps-item">
        <div class="footer-content-app__icon-container">
            <a href="{@url}">
                <img class="footer-content-app__icon" src="{@img}"/>
            </a>
        </div>
    </xsl:template>

    <xsl:template match="footer" mode="footer-logo">
        <div class="footer-content-logo">
            <div class="footer-content-logo__icon-container">
                <a href="{@url}">
                    <img class="footer-content-logo__icon" src="{@img}"/>
                </a>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="currentYear" mode="copyright">
        <div class="footer-content__copyright">
            © <xsl:value-of select="."></xsl:value-of> Группа компаний HeadHunter
        </div>
    </xsl:template>

    <xsl:template match="stats" mode="stats">
        <div class="footer-content__stats">
            Сегодня на сайте
            <xsl:value-of select="vacansies"></xsl:value-of>вакансий,
            <xsl:value-of select="resumes"></xsl:value-of>резюме,
            <xsl:value-of select="companies"></xsl:value-of>компании и за неделю
            <xsl:value-of select="invitations"></xsl:value-of>приглашения
        </div>
    </xsl:template>

</xsl:stylesheet>