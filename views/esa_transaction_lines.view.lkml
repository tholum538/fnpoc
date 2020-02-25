view: esa_transaction_lines {
  sql_table_name: EDW.ESA_TRANSACTION_LINES ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: adjustment_field {
    type: string
    sql: ${TABLE}.ADJUSTMENT_FIELD ;;
  }

  dimension: adjustment_tax_code_id {
    type: number
    sql: ${TABLE}.ADJUSTMENT_TAX_CODE_ID ;;
  }

  dimension: alt_sales_amount {
    type: number
    sql: ${TABLE}.ALT_SALES_AMOUNT ;;
  }

  dimension: amortization_residual {
    type: string
    sql: ${TABLE}.AMORTIZATION_RESIDUAL ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: amount_foreign {
    type: number
    sql: ${TABLE}.AMOUNT_FOREIGN ;;
  }

  dimension: amount_foreign_linked {
    type: number
    sql: ${TABLE}.AMOUNT_FOREIGN_LINKED ;;
  }

  dimension: amount_linked {
    type: number
    sql: ${TABLE}.AMOUNT_LINKED ;;
  }

  dimension: amount_pending {
    type: number
    sql: ${TABLE}.AMOUNT_PENDING ;;
  }

  dimension: amount_settlement {
    type: number
    sql: ${TABLE}.AMOUNT_SETTLEMENT ;;
  }

  dimension: amount_taxable {
    type: number
    sql: ${TABLE}.AMOUNT_TAXABLE ;;
  }

  dimension: amount_taxed {
    type: number
    sql: ${TABLE}.AMOUNT_TAXED ;;
  }

  dimension: bill_variance_status {
    type: string
    sql: ${TABLE}.BILL_VARIANCE_STATUS ;;
  }

  dimension: billing_schedule_id {
    type: number
    sql: ${TABLE}.BILLING_SCHEDULE_ID ;;
  }

  dimension: billing_subsidiary_id {
    type: number
    sql: ${TABLE}.BILLING_SUBSIDIARY_ID ;;
  }

  dimension: bom_quantity {
    type: number
    sql: ${TABLE}.BOM_QUANTITY ;;
  }

  dimension: catch_up_period_id {
    type: number
    sql: ${TABLE}.CATCH_UP_PERIOD_ID ;;
  }

  dimension: charge_rule_id {
    type: number
    sql: ${TABLE}.CHARGE_RULE_ID ;;
  }

  dimension: charge_type {
    type: number
    sql: ${TABLE}.CHARGE_TYPE ;;
  }

  dimension: class_id {
    type: number
    sql: ${TABLE}.CLASS_ID ;;
  }

  dimension: code_of_supply_id {
    type: number
    sql: ${TABLE}.CODE_OF_SUPPLY_ID ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.COMPANY_ID ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.COMPONENT_ID ;;
  }

  dimension: component_yield {
    type: number
    sql: ${TABLE}.COMPONENT_YIELD ;;
  }

  dimension: cost_estimate_type {
    type: string
    sql: ${TABLE}.COST_ESTIMATE_TYPE ;;
  }

  dimension: counterparty_vat_number {
    type: string
    sql: ${TABLE}.COUNTERPARTY_VAT_NUMBER ;;
  }

  dimension: country_of_origin {
    type: string
    sql: ${TABLE}.COUNTRY_OF_ORIGIN ;;
  }

  dimension: country_of_origin_code {
    type: string
    sql: ${TABLE}.COUNTRY_OF_ORIGIN_CODE ;;
  }

  dimension_group: date_cleared {
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
    sql: ${TABLE}.DATE_CLEARED ;;
  }

  dimension_group: date_closed {
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
    sql: ${TABLE}.DATE_CLOSED ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.DATE_CREATED ;;
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

  dimension_group: date_last_modified_gmt {
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
    sql: ${TABLE}.DATE_LAST_MODIFIED_GMT ;;
  }

  dimension_group: date_requested {
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
    sql: ${TABLE}.DATE_REQUESTED ;;
  }

  dimension_group: date_revenue_committed {
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
    sql: ${TABLE}.DATE_REVENUE_COMMITTED ;;
  }

  dimension: delay_rev_rec {
    type: string
    sql: ${TABLE}.DELAY_REV_REC ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}.DEPARTMENT_ID ;;
  }

  dimension: details_of_subject_and_exem_id {
    type: number
    sql: ${TABLE}.DETAILS_OF_SUBJECT_AND_EXEM_ID ;;
  }

  dimension: do_not_display_line {
    type: string
    sql: ${TABLE}.DO_NOT_DISPLAY_LINE ;;
  }

  dimension: do_not_print_line {
    type: string
    sql: ${TABLE}.DO_NOT_PRINT_LINE ;;
  }

  dimension: do_restock {
    type: string
    sql: ${TABLE}.DO_RESTOCK ;;
  }

  dimension: emirate_id {
    type: number
    sql: ${TABLE}.EMIRATE_ID ;;
  }

  dimension: establishment_code {
    type: string
    sql: ${TABLE}.ESTABLISHMENT_CODE ;;
  }

  dimension: estimated_cost {
    type: number
    sql: ${TABLE}.ESTIMATED_COST ;;
  }

  dimension: estimated_cost_foreign {
    type: number
    sql: ${TABLE}.ESTIMATED_COST_FOREIGN ;;
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

  dimension: eu_triangulation {
    type: string
    sql: ${TABLE}.EU_TRIANGULATION ;;
  }

  dimension_group: expected_receipt {
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
    sql: ${TABLE}.EXPECTED_RECEIPT_DATE ;;
  }

  dimension: expense_account_id {
    type: number
    sql: ${TABLE}.EXPENSE_ACCOUNT_ID ;;
  }

  dimension: expense_category_id {
    type: number
    sql: ${TABLE}.EXPENSE_CATEGORY_ID ;;
  }

  dimension: gl_number {
    type: string
    sql: ${TABLE}.GL_NUMBER ;;
  }

  dimension: gl_sequence {
    type: string
    sql: ${TABLE}.GL_SEQUENCE ;;
  }

  dimension: gl_sequence_id {
    type: number
    sql: ${TABLE}.GL_SEQUENCE_ID ;;
  }

  dimension: gross_amount {
    type: number
    sql: ${TABLE}.GROSS_AMOUNT ;;
  }

  dimension: has_cost_line {
    type: string
    sql: ${TABLE}.HAS_COST_LINE ;;
  }

  dimension: is_allocation {
    type: string
    sql: ${TABLE}.IS_ALLOCATION ;;
  }

  dimension: is_amortization_rev_rec {
    type: string
    sql: ${TABLE}.IS_AMORTIZATION_REV_REC ;;
  }

  dimension: is_commitment_confirmed {
    type: string
    sql: ${TABLE}.IS_COMMITMENT_CONFIRMED ;;
  }

  dimension: is_cost_line {
    type: string
    sql: ${TABLE}.IS_COST_LINE ;;
  }

  dimension: is_custom_line {
    type: string
    sql: ${TABLE}.IS_CUSTOM_LINE ;;
  }

  dimension: is_exclude_from_rate_request {
    type: string
    sql: ${TABLE}.IS_EXCLUDE_FROM_RATE_REQUEST ;;
  }

  dimension: is_fx_variance {
    type: string
    sql: ${TABLE}.IS_FX_VARIANCE ;;
  }

  dimension: is_item_value_adjustment {
    type: string
    sql: ${TABLE}.IS_ITEM_VALUE_ADJUSTMENT ;;
  }

  dimension: is_landed_cost {
    type: string
    sql: ${TABLE}.IS_LANDED_COST ;;
  }

  dimension: is_scrap {
    type: string
    sql: ${TABLE}.IS_SCRAP ;;
  }

  dimension: is_vsoe_allocation_line {
    type: string
    sql: ${TABLE}.IS_VSOE_ALLOCATION_LINE ;;
  }

  dimension: isbillable {
    type: string
    sql: ${TABLE}.ISBILLABLE ;;
  }

  dimension: iscleared {
    type: string
    sql: ${TABLE}.ISCLEARED ;;
  }

  dimension: isnonreimbursable {
    type: string
    sql: ${TABLE}.ISNONREIMBURSABLE ;;
  }

  dimension: istaxable {
    type: string
    sql: ${TABLE}.ISTAXABLE ;;
  }

  dimension: item_count {
    type: number
    sql: ${TABLE}.ITEM_COUNT ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.ITEM_ID ;;
  }

  dimension: item_received {
    type: string
    sql: ${TABLE}.ITEM_RECEIVED ;;
  }

  dimension: item_source {
    type: string
    sql: ${TABLE}.ITEM_SOURCE ;;
  }

  dimension: item_unit_price {
    type: string
    sql: ${TABLE}.ITEM_UNIT_PRICE ;;
  }

  dimension: kit_part_number {
    type: number
    sql: ${TABLE}.KIT_PART_NUMBER ;;
  }

  dimension: landed_cost_source_line_id {
    type: number
    sql: ${TABLE}.LANDED_COST_SOURCE_LINE_ID ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: match_bill_to_receipt {
    type: string
    sql: ${TABLE}.MATCH_BILL_TO_RECEIPT ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.MEMO ;;
  }

  dimension: needs_revenue_element {
    type: string
    sql: ${TABLE}.NEEDS_REVENUE_ELEMENT ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}.NET_AMOUNT ;;
  }

  dimension: net_amount_foreign {
    type: number
    sql: ${TABLE}.NET_AMOUNT_FOREIGN ;;
  }

  dimension: non_posting_line {
    type: string
    sql: ${TABLE}.NON_POSTING_LINE ;;
  }

  dimension: notc_id {
    type: number
    sql: ${TABLE}.NOTC_ID ;;
  }

  dimension: number_billed {
    type: number
    sql: ${TABLE}.NUMBER_BILLED ;;
  }

  dimension: operation_sequence_number {
    type: number
    sql: ${TABLE}.OPERATION_SEQUENCE_NUMBER ;;
  }

  dimension: order_priority {
    type: number
    sql: ${TABLE}.ORDER_PRIORITY ;;
  }

  dimension: payment_method_id {
    type: number
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
  }

  dimension: payroll_item_id {
    type: number
    sql: ${TABLE}.PAYROLL_ITEM_ID ;;
  }

  dimension: payroll_wage_base_amount {
    type: number
    sql: ${TABLE}.PAYROLL_WAGE_BASE_AMOUNT ;;
  }

  dimension: payroll_year_to_date_amount {
    type: number
    sql: ${TABLE}.PAYROLL_YEAR_TO_DATE_AMOUNT ;;
  }

  dimension_group: period_closed {
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
    sql: ${TABLE}.PERIOD_CLOSED ;;
  }

  dimension: price_type_id {
    type: number
    sql: ${TABLE}.PRICE_TYPE_ID ;;
  }

  dimension: project_task_id {
    type: number
    sql: ${TABLE}.PROJECT_TASK_ID ;;
  }

  dimension: purchase_contract_id {
    type: number
    sql: ${TABLE}.PURCHASE_CONTRACT_ID ;;
  }

  dimension: quantity_allocated {
    type: number
    sql: ${TABLE}.QUANTITY_ALLOCATED ;;
  }

  dimension: quantity_committed {
    type: number
    sql: ${TABLE}.QUANTITY_COMMITTED ;;
  }

  dimension: quantity_packed {
    type: number
    sql: ${TABLE}.QUANTITY_PACKED ;;
  }

  dimension: quantity_picked {
    type: number
    sql: ${TABLE}.QUANTITY_PICKED ;;
  }

  dimension: quantity_received_in_shipment {
    type: number
    sql: ${TABLE}.QUANTITY_RECEIVED_IN_SHIPMENT ;;
  }

  dimension_group: receivebydate {
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
    sql: ${TABLE}.RECEIVEBYDATE ;;
  }

  dimension: reimbursement_type {
    type: string
    sql: ${TABLE}.REIMBURSEMENT_TYPE ;;
  }

  dimension: related_company_id {
    type: number
    sql: ${TABLE}.RELATED_COMPANY_ID ;;
  }

  dimension_group: rev_rec_end {
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
    sql: ${TABLE}.REV_REC_END_DATE ;;
  }

  dimension: rev_rec_rule_id {
    type: number
    sql: ${TABLE}.REV_REC_RULE_ID ;;
  }

  dimension_group: rev_rec_start {
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
    sql: ${TABLE}.REV_REC_START_DATE ;;
  }

  dimension: revenue_element_id {
    type: number
    sql: ${TABLE}.REVENUE_ELEMENT_ID ;;
  }

  dimension: schedule_id {
    type: number
    sql: ${TABLE}.SCHEDULE_ID ;;
  }

  dimension_group: service {
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
    sql: ${TABLE}.SERVICE_DATE ;;
  }

  dimension_group: shipdate {
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
    sql: ${TABLE}.SHIPDATE ;;
  }

  dimension_group: shipment_received {
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
    sql: ${TABLE}.SHIPMENT_RECEIVED ;;
  }

  dimension: shipping_group_id {
    type: number
    sql: ${TABLE}.SHIPPING_GROUP_ID ;;
  }

  dimension: source_subsidiary_id {
    type: number
    sql: ${TABLE}.SOURCE_SUBSIDIARY_ID ;;
  }

  dimension: statistical_procedure_for_p_id {
    type: number
    sql: ${TABLE}.STATISTICAL_PROCEDURE_FOR_P_ID ;;
  }

  dimension: statistical_procedure_for_s_id {
    type: number
    sql: ${TABLE}.STATISTICAL_PROCEDURE_FOR_S_ID ;;
  }

  dimension: statistical_value {
    type: number
    sql: ${TABLE}.STATISTICAL_VALUE ;;
  }

  dimension: statistical_value__base_curre {
    type: number
    sql: ${TABLE}.STATISTICAL_VALUE__BASE_CURRE ;;
  }

  dimension: subscription_line_id {
    type: number
    sql: ${TABLE}.SUBSCRIPTION_LINE_ID ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SUBSIDIARY_ID ;;
  }

  dimension: tax_item_id {
    type: number
    sql: ${TABLE}.TAX_ITEM_ID ;;
  }

  dimension: tax_type {
    type: string
    sql: ${TABLE}.TAX_TYPE ;;
  }

  dimension: term_in_months {
    type: number
    sql: ${TABLE}.TERM_IN_MONTHS ;;
  }

  dimension: tobeemailed {
    type: string
    sql: ${TABLE}.TOBEEMAILED ;;
  }

  dimension: tobefaxed {
    type: string
    sql: ${TABLE}.TOBEFAXED ;;
  }

  dimension: tobeprinted {
    type: string
    sql: ${TABLE}.TOBEPRINTED ;;
  }

  dimension: transaction_discount_line {
    type: string
    sql: ${TABLE}.TRANSACTION_DISCOUNT_LINE ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.TRANSACTION_ID ;;
  }

  dimension: transaction_line_id {
    type: number
    sql: ${TABLE}.TRANSACTION_LINE_ID ;;
  }

  dimension: transaction_order {
    type: number
    sql: ${TABLE}.TRANSACTION_ORDER ;;
  }

  dimension: transfer_order_item_line {
    type: number
    sql: ${TABLE}.TRANSFER_ORDER_ITEM_LINE ;;
  }

  dimension: transfer_order_line_type {
    type: string
    sql: ${TABLE}.TRANSFER_ORDER_LINE_TYPE ;;
  }

  dimension: unique_key {
    type: number
    sql: ${TABLE}.UNIQUE_KEY ;;
  }

  dimension: unit_cost_override {
    type: number
    sql: ${TABLE}.UNIT_COST_OVERRIDE ;;
  }

  dimension: unit_of_measure_id {
    type: number
    sql: ${TABLE}.UNIT_OF_MEASURE_ID ;;
  }

  dimension: use_tax {
    type: string
    sql: ${TABLE}.USE_TAX ;;
  }

  dimension: vsoe_allocation {
    type: number
    sql: ${TABLE}.VSOE_ALLOCATION ;;
  }

  dimension: vsoe_amt {
    type: number
    sql: ${TABLE}.VSOE_AMT ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
