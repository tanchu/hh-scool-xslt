<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="form-item-input-name">
    <div class="form__item">
      <input type="text" class="input" placeholder="ФИО"/>
    </div>
  </xsl:template>

  <xsl:template name="form-item-input-email">
    <div class="form__item">
      <input type="text" class="input" placeholder="Электронная почта" />
    </div>
  </xsl:template>

  <xsl:key name="phoneCodes" match="/doc/phoneCodes/code" use="@country"/>
  <xsl:template match="doc" mode="form-item-input-phone">
    <div class="form__item">
      <input type="text" class="input input_phone-pre">
        <xsl:attribute name="placeholder">
          <xsl:value-of select="key('phoneCodes', location/@country)"/>
        </xsl:attribute>
        <xsl:attribute name="value">
          <xsl:value-of select="key('phoneCodes', location/@country)"/>
        </xsl:attribute>
      </input>
      <input type="text" class="input input_phone-code" placeholder="Код" />
      <input type="text" class="input input_phone-number" placeholder="Номер" />
    </div>
  </xsl:template>

  <xsl:template name="form-item-radio-delivery">
    <div class="form__item">
      <label class="form__label popup-order__form-label" for="delivery-01">
        <input type="radio" id="delivery-01" name="delivery" class="radio" value="devivery-01" />
        <span class="radio-button popup-order__form-button">Самовывоз</span>
      </label>
      <label class="form__label popup-order__form-label" for="delivery-02">
        <input type="radio" id="delivery-02" name="delivery" class="radio" value="devivery-02" checked="checked" />
        <span class="radio-button popup-order__form-button">Доставка</span>
      </label>
    </div>
  </xsl:template>

  <xsl:template name="form-item-select-city">
    <div class="form__item">
      <select name="city" id="select-city" class="select">
        <option disabled="disabled" value="null" class="option" selected="selected">Город</option>
        <option value="0" class="option">Москва</option>
        <option value="1" class="option">Химки</option>
        <option value="2" class="option">Санкт-Петербург</option>
      </select>
    </div>
  </xsl:template>

  <xsl:template name="form-item-textarea-address">
    <div class="form__item">
      <textarea name="address" id="address" cols="30" rows="4" class="textarea" placeholder="Адрес"></textarea>
    </div>
  </xsl:template>

  <xsl:template name="form-item-radio-payments">
    <div class="form__item">
      <label for="online-pay" class="form__label">
        <input type="radio" name="pay" id="online-pay" class="radio" value="online-pay" checked="checked" />
        <span class="radio-box"></span>
        <span class="radio-text">Online-оплата</span>
      </label>
    </div>
    <div class="form__item">
      <label for="cash-pay" class="form__label">
        <input type="radio" name="pay" id="cash-pay" class="radio" value="cash-pay" />
        <span class="radio-box"></span>
        <span class="radio-text">Наличными</span>
      </label>
    </div>
    <div class="form__item">
      <label for="card-pay" class="form__label">
        <input type="radio" name="pay" id="card-pay" class="radio" value="card-pay" />
        <span class="radio-box"></span>
        <span class="radio-text">Картой при получении</span>
      </label>
    </div>
  </xsl:template>

  <xsl:template name="form-item-check-subscribe">
    <div class="form__item">
      <label for="sms" class="form__label">
        <input type="checkbox" name="sms" id="sms" class="checkbox" />
        <span class="checkbox-box"></span>
        <span class="checkbox-text">Хочу получать SMS уведомления</span>
      </label>
    </div>
  </xsl:template>

</xsl:stylesheet>