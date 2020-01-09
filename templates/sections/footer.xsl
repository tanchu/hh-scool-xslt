<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../social.xsl"/>
  <xsl:import href="../apps.xsl"/>
  <xsl:import href="../logo.xsl"/>

  <xsl:template match="doc" mode="footer">
    <footer class="footer">
      <div class="columns-wrapper">
        <div class="footer-links">
          <div class="columns-row">
            <xsl:apply-templates select="social" mode="footer-social"/>
            <xsl:apply-templates select="apps" mode="footer-apps"/>
            <xsl:call-template name="footer-logo"/>
          </div>
        </div>
        <div class="footer-info">
          <div class="columns-row">
            <div class="column column_s-2 column_m-6 column_l-12">
              <div class="footer-info__copyright">© 2019 Группа компаний HeadHunter</div>
              <xsl:apply-templates select="statistics" mode="footer-statistics"></xsl:apply-templates>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </xsl:template>

  <xsl:template match="social" mode="footer-social">
    <div class="column column_s-2 column_m-3 column_l-4">
      <xsl:apply-templates select="." mode="social"/>
    </div>
  </xsl:template>

  <xsl:template match="apps" mode="footer-apps">
    <div class="column column_s-2 column_m-3 column_l-4">
      <xsl:apply-templates select="." mode="apps"/>
    </div>
  </xsl:template>

  <xsl:template name="footer-logo">
    <div class="column column_s-0 column_m-0 column_l-4">
      <div class="footer__logo">
        <xsl:call-template name="logo-footer"/>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="statistics" mode="footer-statistics">
    <div class="footer-info__statistic">
      <xsl:text>Сегодня на сайте </xsl:text>
      <xsl:value-of select="vacancies"/>
      <xsl:text> вакансий, </xsl:text>
      <xsl:value-of select="resume"/>
      <xsl:text> резюме, </xsl:text>
      <xsl:value-of select="empoyers"/>
      <xsl:text> компании и за неделю </xsl:text>
      <xsl:value-of select="offers"/>
      <xsl:text> приглашения</xsl:text>
    </div>
  </xsl:template>

</xsl:stylesheet>