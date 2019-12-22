<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../forms/form-order.xsl"/>

  <xsl:template name="popup-order">
    <div class="popup-order" id="popup-order">
      <div class="columns-wrapper">
        <div class="columns-row">
          <div class="column column_s-2 column_m-3 column_l-7">
            <div class="popup-order__form-container">
              <xsl:call-template name="form-order"/>
              </div>
            </div>
            <div class="column column_s-0 column_m-0 column_l-1"></div>
            <div class="column column_s-0 column_m-3 column_l-4">
              <div class="popup-order__product">
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </xsl:template>

  </xsl:stylesheet>