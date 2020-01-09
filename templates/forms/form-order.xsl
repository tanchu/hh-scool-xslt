<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="form.xsl"/>

  <xsl:template name="form-order">
    <form action="#" class="form popup-order__form">
      <div class="form__items">
        <div class="heading popup-order__form-title">Оформление заказа</div>

        <div class="form__block">
          <h3 class="heading heading_level-3">Контактное лицо</h3>
          <xsl:call-template name="form-item-input-name" />
          <xsl:call-template name="form-item-input-email" />
          <xsl:apply-templates select="/doc" mode="form-item-input-phone" />
        </div>

        <div class="form__block">
          <h3 class="heading heading_level-3">Способ получения заказа</h3>
          <xsl:call-template name="form-item-radio-delivery" />
        </div>

        <div class="form__block">
          <h3 class="heading heading_level-3">Адрес</h3>
          <xsl:call-template name="form-item-select-city" />
          <xsl:call-template name="form-item-textarea-address" />
        </div>

        <div class="form__block">
          <h3 class="heading heading_level-3">Оплата</h3>
          <xsl:call-template name="form-item-radio-payments" />
        </div>

        <div class="form__block">
          <h3 class="heading heading_level-3">Уведомления</h3>
          <xsl:call-template name="form-item-check-subscribe" />
        </div>

        <div class="form__item">
          <button type="submit" class="button popup-order__form-button popup-order__form-button_submit">Оформить заказ</button>
        </div>
      </div>
    </form>
  </xsl:template>

</xsl:stylesheet>