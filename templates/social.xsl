<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="social">
    <div class="social">
      <xsl:call-template name="social-facebook"/>
      <xsl:call-template name="social-twitter"/>
      <xsl:call-template name="social-vkontakte"/>
      <xsl:call-template name="social-instagram"/>
    </div>
  </xsl:template>

  <xsl:template name="social-facebook">
    <a href="#" class="social__link" target="_blank">
      <img src="css/blocks/social/icon-fb.svg" alt="Facebook" />
    </a>
  </xsl:template>

  <xsl:template name="social-twitter">
    <a href="#" class="social__link" target="_blank">
      <img src="css/blocks/social/icon-tw.svg" alt="Twitter" />
    </a>
  </xsl:template>

  <xsl:template name="social-vkontakte">
    <a href="#" class="social__link" target="_blank">
      <img src="css/blocks/social/icon-vk.svg" alt="Vkontakte" />
    </a>
  </xsl:template>

  <xsl:template name="social-instagram">
    <a href="#" class="social__link" target="_blank">
      <img src="css/blocks/social/icon-inst.svg" alt="Instagram" />
    </a>
  </xsl:template>

</xsl:stylesheet>