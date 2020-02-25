view: esa_items {
  sql_table_name: EDW.ESA_ITEMS ;;

  dimension: allow_drop_ship {
    type: string
    sql: ${TABLE}.ALLOW_DROP_SHIP ;;
  }

  dimension: alt_demand_source_item_id {
    type: number
    sql: ${TABLE}.ALT_DEMAND_SOURCE_ITEM_ID ;;
  }

  dimension: asset_account_id {
    type: number
    sql: ${TABLE}.ASSET_ACCOUNT_ID ;;
  }

  dimension: atp_lead_time {
    type: number
    sql: ${TABLE}.ATP_LEAD_TIME ;;
  }

  dimension: atp_method {
    type: string
    sql: ${TABLE}.ATP_METHOD ;;
  }

  dimension: available_to_partners {
    type: string
    sql: ${TABLE}.AVAILABLE_TO_PARTNERS ;;
  }

  dimension: averagecost {
    type: number
    sql: ${TABLE}.AVERAGECOST ;;
  }

  dimension: backward_consumption_days {
    type: number
    sql: ${TABLE}.BACKWARD_CONSUMPTION_DAYS ;;
  }

  dimension: bill_exch_rate_var_account_id {
    type: number
    sql: ${TABLE}.BILL_EXCH_RATE_VAR_ACCOUNT_ID ;;
  }

  dimension: bill_price_variance_account_id {
    type: number
    sql: ${TABLE}.BILL_PRICE_VARIANCE_ACCOUNT_ID ;;
  }

  dimension: bill_qty_variance_account_id {
    type: number
    sql: ${TABLE}.BILL_QTY_VARIANCE_ACCOUNT_ID ;;
  }

  dimension: build_sub_assemblies {
    type: string
    sql: ${TABLE}.BUILD_SUB_ASSEMBLIES ;;
  }

  dimension: class_id {
    type: number
    sql: ${TABLE}.CLASS_ID ;;
  }

  dimension: closeout {
    type: string
    sql: ${TABLE}.CLOSEOUT ;;
  }

  dimension: code_of_supply_id {
    type: number
    sql: ${TABLE}.CODE_OF_SUPPLY_ID ;;
  }

  dimension: commodity_code {
    type: string
    sql: ${TABLE}.COMMODITY_CODE ;;
  }

  dimension: consumption_unit_id {
    type: number
    sql: ${TABLE}.CONSUMPTION_UNIT_ID ;;
  }

  dimension: cost_0 {
    type: number
    sql: ${TABLE}.COST_0 ;;
  }

  dimension: cost_category {
    type: string
    sql: ${TABLE}.COST_CATEGORY ;;
  }

  dimension: cost_estimate_type {
    type: string
    sql: ${TABLE}.COST_ESTIMATE_TYPE ;;
  }

  dimension: costing_method {
    type: string
    sql: ${TABLE}.COSTING_METHOD ;;
  }

  dimension: country_of_manufacture {
    type: string
    sql: ${TABLE}.COUNTRY_OF_MANUFACTURE ;;
  }

  dimension: create_plan_on_event_type {
    type: string
    sql: ${TABLE}.CREATE_PLAN_ON_EVENT_TYPE ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED ;;
  }

  dimension: current_on_order_count {
    type: number
    sql: ${TABLE}.CURRENT_ON_ORDER_COUNT ;;
  }

  dimension: custreturn_variance_account_id {
    type: number
    sql: ${TABLE}.CUSTRETURN_VARIANCE_ACCOUNT_ID ;;
  }

  dimension_group: date_last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_LAST_MODIFIED ;;
  }

  dimension_group: date_of_last_transaction {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_OF_LAST_TRANSACTION ;;
  }

  dimension: default_return_cost {
    type: number
    sql: ${TABLE}.DEFAULT_RETURN_COST ;;
  }

  dimension: deferred_expense_account_id {
    type: number
    sql: ${TABLE}.DEFERRED_EXPENSE_ACCOUNT_ID ;;
  }

  dimension: deferred_revenue_account_id {
    type: number
    sql: ${TABLE}.DEFERRED_REVENUE_ACCOUNT_ID ;;
  }

  dimension: demand_source {
    type: string
    sql: ${TABLE}.DEMAND_SOURCE ;;
  }

  dimension: demand_time_fence {
    type: number
    sql: ${TABLE}.DEMAND_TIME_FENCE ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}.DEPARTMENT_ID ;;
  }

  dimension: department_id_0 {
    type: number
    value_format_name: id
    sql: ${TABLE}.DEPARTMENT_ID_0 ;;
  }

  dimension: deposit {
    type: string
    sql: ${TABLE}.DEPOSIT ;;
  }

  dimension: displayname {
    type: string
    sql: ${TABLE}.DISPLAYNAME ;;
  }

  dimension: distribution_category {
    type: string
    sql: ${TABLE}.DISTRIBUTION_CATEGORY ;;
  }

  dimension: distribution_network {
    type: string
    sql: ${TABLE}.DISTRIBUTION_NETWORK ;;
  }

  dimension: dropship_expense_account_id {
    type: number
    sql: ${TABLE}.DROPSHIP_EXPENSE_ACCOUNT_ID ;;
  }

  dimension: effective_bom_control_type {
    type: string
    sql: ${TABLE}.EFFECTIVE_BOM_CONTROL_TYPE ;;
  }

  dimension_group: etl_load_dts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ETL_LOAD_DTS ;;
  }

  dimension_group: etl_prttn_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ETL_PRTTN_DT ;;
  }

  dimension: etl_row_id {
    type: number
    sql: ${TABLE}.ETL_ROW_ID ;;
  }

  dimension: etl_sess_id {
    type: number
    sql: ${TABLE}.ETL_SESS_ID ;;
  }

  dimension_group: etl_src_mod_dts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ETL_SRC_MOD_DTS ;;
  }

  dimension: etl_src_sys {
    type: string
    sql: ${TABLE}.ETL_SRC_SYS ;;
  }

  dimension: expense_account_id {
    type: number
    sql: ${TABLE}.EXPENSE_ACCOUNT_ID ;;
  }

  dimension: featureddescription {
    type: string
    sql: ${TABLE}.FEATUREDDESCRIPTION ;;
  }

  dimension: featureditem {
    type: string
    sql: ${TABLE}.FEATUREDITEM ;;
  }

  dimension: fixed_lot_size {
    type: number
    sql: ${TABLE}.FIXED_LOT_SIZE ;;
  }

  dimension: forward_consumption_days {
    type: number
    sql: ${TABLE}.FORWARD_CONSUMPTION_DAYS ;;
  }

  dimension: fraud_risk {
    type: string
    sql: ${TABLE}.FRAUD_RISK ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: fx_adjustment_account_id {
    type: number
    sql: ${TABLE}.FX_ADJUSTMENT_ACCOUNT_ID ;;
  }

  dimension: gain_loss_account_id {
    type: number
    sql: ${TABLE}.GAIN_LOSS_ACCOUNT_ID ;;
  }

  dimension: handling_cost {
    type: number
    sql: ${TABLE}.HANDLING_COST ;;
  }

  dimension: hazmat {
    type: string
    sql: ${TABLE}.HAZMAT ;;
  }

  dimension: hazmat_hazard_class {
    type: string
    sql: ${TABLE}.HAZMAT_HAZARD_CLASS ;;
  }

  dimension: hazmat_id {
    type: string
    sql: ${TABLE}.HAZMAT_ID ;;
  }

  dimension: hazmat_item_units {
    type: string
    sql: ${TABLE}.HAZMAT_ITEM_UNITS ;;
  }

  dimension: hazmat_item_units_qty {
    type: number
    sql: ${TABLE}.HAZMAT_ITEM_UNITS_QTY ;;
  }

  dimension: hazmat_packing_group {
    type: string
    sql: ${TABLE}.HAZMAT_PACKING_GROUP ;;
  }

  dimension: hazmat_shipping_name {
    type: string
    sql: ${TABLE}.HAZMAT_SHIPPING_NAME ;;
  }

  dimension: include_child_subsidiaries {
    type: string
    sql: ${TABLE}.INCLUDE_CHILD_SUBSIDIARIES ;;
  }

  dimension: income_account_id {
    type: number
    sql: ${TABLE}.INCOME_ACCOUNT_ID ;;
  }

  dimension: interco_expense_account_id {
    type: number
    sql: ${TABLE}.INTERCO_EXPENSE_ACCOUNT_ID ;;
  }

  dimension: interco_income_account_id {
    type: number
    sql: ${TABLE}.INTERCO_INCOME_ACCOUNT_ID ;;
  }

  dimension: invt_count_classification {
    type: number
    sql: ${TABLE}.INVT_COUNT_CLASSIFICATION ;;
  }

  dimension: invt_count_interval {
    type: number
    sql: ${TABLE}.INVT_COUNT_INTERVAL ;;
  }

  dimension: is_cont_rev_handling {
    type: string
    sql: ${TABLE}.IS_CONT_REV_HANDLING ;;
  }

  dimension: is_enforce_min_qty_internally {
    type: string
    sql: ${TABLE}.IS_ENFORCE_MIN_QTY_INTERNALLY ;;
  }

  dimension: is_hold_rev_rec {
    type: string
    sql: ${TABLE}.IS_HOLD_REV_REC ;;
  }

  dimension: is_moss {
    type: string
    sql: ${TABLE}.IS_MOSS ;;
  }

  dimension: is_phantom {
    type: string
    sql: ${TABLE}.IS_PHANTOM ;;
  }

  dimension: is_special_order_item {
    type: string
    sql: ${TABLE}.IS_SPECIAL_ORDER_ITEM ;;
  }

  dimension: isinactive {
    type: string
    sql: ${TABLE}.ISINACTIVE ;;
  }

  dimension: isonline {
    type: string
    sql: ${TABLE}.ISONLINE ;;
  }

  dimension: istaxable {
    type: string
    sql: ${TABLE}.ISTAXABLE ;;
  }

  dimension: item_defined_cost {
    type: number
    sql: ${TABLE}.ITEM_DEFINED_COST ;;
  }

  dimension: item_extid {
    type: string
    sql: ${TABLE}.ITEM_EXTID ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.ITEM_ID ;;
  }

  dimension: item_image {
    type: number
    sql: ${TABLE}.ITEM_IMAGE ;;
  }

  dimension: item_revenue_category {
    type: string
    sql: ${TABLE}.ITEM_REVENUE_CATEGORY ;;
  }

  dimension_group: last_cogs_correction {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_COGS_CORRECTION ;;
  }

  dimension_group: last_invt_count {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_INVT_COUNT_DATE ;;
  }

  dimension: last_purchase_price {
    type: number
    sql: ${TABLE}.LAST_PURCHASE_PRICE ;;
  }

  dimension: list_id {
    type: number
    sql: ${TABLE}.LIST_ID ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: lot_numbered_item {
    type: string
    sql: ${TABLE}.LOT_NUMBERED_ITEM ;;
  }

  dimension: lot_sizing_method {
    type: string
    sql: ${TABLE}.LOT_SIZING_METHOD ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.MANUFACTURER ;;
  }

  dimension: manufacturing_charge_item {
    type: string
    sql: ${TABLE}.MANUFACTURING_CHARGE_ITEM ;;
  }

  dimension: match_bill_to_receipt {
    type: string
    sql: ${TABLE}.MATCH_BILL_TO_RECEIPT ;;
  }

  dimension: matrix_type {
    type: string
    sql: ${TABLE}.MATRIX_TYPE ;;
  }

  dimension: maximum_quantity {
    type: number
    sql: ${TABLE}.MAXIMUM_QUANTITY ;;
  }

  dimension: minimum_quantity {
    type: number
    sql: ${TABLE}.MINIMUM_QUANTITY ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.MODIFIED ;;
  }

  dimension: mpn {
    type: string
    sql: ${TABLE}.MPN ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension_group: next_invt_count {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.NEXT_INVT_COUNT_DATE ;;
  }

  dimension: ns_lead_time {
    type: number
    sql: ${TABLE}.NS_LEAD_TIME ;;
  }

  dimension: offersupport {
    type: string
    sql: ${TABLE}.OFFERSUPPORT ;;
  }

  dimension: onspecial {
    type: string
    sql: ${TABLE}.ONSPECIAL ;;
  }

  dimension: overhead_type {
    type: string
    sql: ${TABLE}.OVERHEAD_TYPE ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension: payment_method_id {
    type: number
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
  }

  dimension: periodic_lot_size_days {
    type: number
    sql: ${TABLE}.PERIODIC_LOT_SIZE_DAYS ;;
  }

  dimension: periodic_lot_size_type {
    type: string
    sql: ${TABLE}.PERIODIC_LOT_SIZE_TYPE ;;
  }

  dimension: pref_purchase_tax_id {
    type: number
    sql: ${TABLE}.PREF_PURCHASE_TAX_ID ;;
  }

  dimension: pref_sale_tax_id {
    type: number
    sql: ${TABLE}.PREF_SALE_TAX_ID ;;
  }

  dimension: pref_stock_level {
    type: number
    sql: ${TABLE}.PREF_STOCK_LEVEL ;;
  }

  dimension: prices_include_tax {
    type: string
    sql: ${TABLE}.PRICES_INCLUDE_TAX ;;
  }

  dimension: pricing_group_id {
    type: number
    sql: ${TABLE}.PRICING_GROUP_ID ;;
  }

  dimension: print_sub_items {
    type: string
    sql: ${TABLE}.PRINT_SUB_ITEMS ;;
  }

  dimension: prod_price_var_account_id {
    type: number
    sql: ${TABLE}.PROD_PRICE_VAR_ACCOUNT_ID ;;
  }

  dimension: prod_qty_var_account_id {
    type: number
    sql: ${TABLE}.PROD_QTY_VAR_ACCOUNT_ID ;;
  }

  dimension: prompt_payment_discount_item {
    type: string
    sql: ${TABLE}.PROMPT_PAYMENT_DISCOUNT_ITEM ;;
  }

  dimension: publish_item_id {
    type: number
    sql: ${TABLE}.PUBLISH_ITEM_ID ;;
  }

  dimension: purchase_price_var_account_id {
    type: number
    sql: ${TABLE}.PURCHASE_PRICE_VAR_ACCOUNT_ID ;;
  }

  dimension: purchase_unit_id {
    type: number
    sql: ${TABLE}.PURCHASE_UNIT_ID ;;
  }

  dimension: purchasedescription {
    type: string
    sql: ${TABLE}.PURCHASEDESCRIPTION ;;
  }

  dimension: purchaseorderamount {
    type: number
    sql: ${TABLE}.PURCHASEORDERAMOUNT ;;
  }

  dimension: purchaseorderquantity {
    type: number
    sql: ${TABLE}.PURCHASEORDERQUANTITY ;;
  }

  dimension: purchaseorderquantitydiff {
    type: number
    sql: ${TABLE}.PURCHASEORDERQUANTITYDIFF ;;
  }

  dimension: quantityavailable {
    type: number
    sql: ${TABLE}.QUANTITYAVAILABLE ;;
  }

  dimension: quantitybackordered {
    type: number
    sql: ${TABLE}.QUANTITYBACKORDERED ;;
  }

  dimension: quantityonhand {
    type: number
    sql: ${TABLE}.QUANTITYONHAND ;;
  }

  dimension: receiptamount {
    type: number
    sql: ${TABLE}.RECEIPTAMOUNT ;;
  }

  dimension: receiptquantity {
    type: number
    sql: ${TABLE}.RECEIPTQUANTITY ;;
  }

  dimension: receiptquantitydiff {
    type: number
    sql: ${TABLE}.RECEIPTQUANTITYDIFF ;;
  }

  dimension: reorder_multiple {
    type: number
    sql: ${TABLE}.REORDER_MULTIPLE ;;
  }

  dimension: reorderpoint {
    type: number
    sql: ${TABLE}.REORDERPOINT ;;
  }

  dimension: replenishment_method {
    type: string
    sql: ${TABLE}.REPLENISHMENT_METHOD ;;
  }

  dimension: resalable {
    type: string
    sql: ${TABLE}.RESALABLE ;;
  }

  dimension: reschedule_in_days {
    type: number
    sql: ${TABLE}.RESCHEDULE_IN_DAYS ;;
  }

  dimension: reschedule_out_days {
    type: number
    sql: ${TABLE}.RESCHEDULE_OUT_DAYS ;;
  }

  dimension: rev_rec_forecast_rule_id {
    type: number
    sql: ${TABLE}.REV_REC_FORECAST_RULE_ID ;;
  }

  dimension: rev_rec_rule_id {
    type: number
    sql: ${TABLE}.REV_REC_RULE_ID ;;
  }

  dimension: revenue_allocation_group {
    type: string
    sql: ${TABLE}.REVENUE_ALLOCATION_GROUP ;;
  }

  dimension: round_up_as_component {
    type: string
    sql: ${TABLE}.ROUND_UP_AS_COMPONENT ;;
  }

  dimension: safety_stock_days {
    type: number
    sql: ${TABLE}.SAFETY_STOCK_DAYS ;;
  }

  dimension: safety_stock_level {
    type: number
    sql: ${TABLE}.SAFETY_STOCK_LEVEL ;;
  }

  dimension: sale_unit_id {
    type: number
    sql: ${TABLE}.SALE_UNIT_ID ;;
  }

  dimension: salesdescription {
    type: string
    sql: ${TABLE}.SALESDESCRIPTION ;;
  }

  dimension: salesprice {
    type: string
    sql: ${TABLE}.SALESPRICE ;;
  }

  dimension: scrap_account_id {
    type: number
    sql: ${TABLE}.SCRAP_ACCOUNT_ID ;;
  }

  dimension: season_id {
    type: number
    sql: ${TABLE}.SEASON_ID ;;
  }

  dimension: serialized_item {
    type: string
    sql: ${TABLE}.SERIALIZED_ITEM ;;
  }

  dimension: shippingcost {
    type: number
    sql: ${TABLE}.SHIPPINGCOST ;;
  }

  dimension: special_work_order_item {
    type: string
    sql: ${TABLE}.SPECIAL_WORK_ORDER_ITEM ;;
  }

  dimension: specialsdescription {
    type: string
    sql: ${TABLE}.SPECIALSDESCRIPTION ;;
  }

  dimension: stock_unit_id {
    type: number
    sql: ${TABLE}.STOCK_UNIT_ID ;;
  }

  dimension: storedescription {
    type: string
    sql: ${TABLE}.STOREDESCRIPTION ;;
  }

  dimension: storedetaileddescription {
    type: string
    sql: ${TABLE}.STOREDETAILEDDESCRIPTION ;;
  }

  dimension: storedisplayname {
    type: string
    sql: ${TABLE}.STOREDISPLAYNAME ;;
  }

  dimension: style_id {
    type: number
    sql: ${TABLE}.STYLE_ID ;;
  }

  dimension: subtype {
    type: string
    sql: ${TABLE}.SUBTYPE ;;
  }

  dimension: supplementary_unit__abberviat {
    type: string
    sql: ${TABLE}.SUPPLEMENTARY_UNIT__ABBERVIAT ;;
  }

  dimension: supplementary_unit_id {
    type: number
    sql: ${TABLE}.SUPPLEMENTARY_UNIT_ID ;;
  }

  dimension: supply_time_fence {
    type: number
    sql: ${TABLE}.SUPPLY_TIME_FENCE ;;
  }

  dimension: supply_type {
    type: string
    sql: ${TABLE}.SUPPLY_TYPE ;;
  }

  dimension: tax_item_id {
    type: number
    sql: ${TABLE}.TAX_ITEM_ID ;;
  }

  dimension: totalvalue {
    type: number
    sql: ${TABLE}.TOTALVALUE ;;
  }

  dimension: transferprice {
    type: number
    sql: ${TABLE}.TRANSFERPRICE ;;
  }

  dimension: type_name {
    type: string
    sql: ${TABLE}.TYPE_NAME ;;
  }

  dimension: type_of_goods_id {
    type: number
    sql: ${TABLE}.TYPE_OF_GOODS_ID ;;
  }

  dimension: un_number {
    type: string
    sql: ${TABLE}.UN_NUMBER ;;
  }

  dimension: unbuild_variance_account_id {
    type: number
    sql: ${TABLE}.UNBUILD_VARIANCE_ACCOUNT_ID ;;
  }

  dimension: units_type_id {
    type: number
    sql: ${TABLE}.UNITS_TYPE_ID ;;
  }

  dimension: upc_code {
    type: string
    sql: ${TABLE}.UPC_CODE ;;
  }

  dimension: use_component_yield {
    type: string
    sql: ${TABLE}.USE_COMPONENT_YIELD ;;
  }

  dimension: vendor_id {
    type: number
    sql: ${TABLE}.VENDOR_ID ;;
  }

  dimension: vendorname {
    type: string
    sql: ${TABLE}.VENDORNAME ;;
  }

  dimension: vendreturn_variance_account_id {
    type: number
    sql: ${TABLE}.VENDRETURN_VARIANCE_ACCOUNT_ID ;;
  }

  dimension: vsoe_deferral {
    type: string
    sql: ${TABLE}.VSOE_DEFERRAL ;;
  }

  dimension: vsoe_delivered {
    type: string
    sql: ${TABLE}.VSOE_DELIVERED ;;
  }

  dimension: vsoe_discount {
    type: string
    sql: ${TABLE}.VSOE_DISCOUNT ;;
  }

  dimension: vsoe_price {
    type: number
    sql: ${TABLE}.VSOE_PRICE ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.WEIGHT ;;
  }

  dimension: weight_in_user_defined_unit {
    type: number
    sql: ${TABLE}.WEIGHT_IN_USER_DEFINED_UNIT ;;
  }

  dimension: weight_unit_index {
    type: number
    sql: ${TABLE}.WEIGHT_UNIT_INDEX ;;
  }

  dimension: wip_account_id {
    type: number
    sql: ${TABLE}.WIP_ACCOUNT_ID ;;
  }

  dimension: wip_cost_variance_account_id {
    type: number
    sql: ${TABLE}.WIP_COST_VARIANCE_ACCOUNT_ID ;;
  }

  dimension: work_order_lead_time {
    type: number
    sql: ${TABLE}.WORK_ORDER_LEAD_TIME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      displayname,
      full_name,
      hazmat_shipping_name,
      name,
      storedisplayname,
      type_name,
      vendorname
    ]
  }
}
