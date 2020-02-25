view: esa_customers {
  sql_table_name: EDW.ESA_CUSTOMERS ;;

  dimension: accountnumber {
    type: string
    sql: ${TABLE}.ACCOUNTNUMBER ;;
  }

  dimension: alcohol_recipient_type {
    type: string
    sql: ${TABLE}.ALCOHOL_RECIPIENT_TYPE ;;
  }

  dimension: allow_task_time_for_allocation {
    type: string
    sql: ${TABLE}.ALLOW_TASK_TIME_FOR_ALLOCATION ;;
  }

  dimension: altemail {
    type: string
    sql: ${TABLE}.ALTEMAIL ;;
  }

  dimension: alternate_contact_id {
    type: number
    sql: ${TABLE}.ALTERNATE_CONTACT_ID ;;
  }

  dimension: altphone {
    type: string
    sql: ${TABLE}.ALTPHONE ;;
  }

  dimension: amount_complete {
    type: number
    sql: ${TABLE}.AMOUNT_COMPLETE ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.ANNUAL_REVENUE ;;
  }

  dimension: billaddress {
    type: string
    sql: ${TABLE}.BILLADDRESS ;;
  }

  dimension: billing_rate_card_id {
    type: number
    sql: ${TABLE}.BILLING_RATE_CARD_ID ;;
  }

  dimension: billing_schedule_id {
    type: number
    sql: ${TABLE}.BILLING_SCHEDULE_ID ;;
  }

  dimension: billing_schedule_type {
    type: string
    sql: ${TABLE}.BILLING_SCHEDULE_TYPE ;;
  }

  dimension: billing_transaction_type {
    type: string
    sql: ${TABLE}.BILLING_TRANSACTION_TYPE ;;
  }

  dimension: brn {
    type: string
    sql: ${TABLE}.BRN ;;
  }

  dimension_group: calculated_end {
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
    sql: ${TABLE}.CALCULATED_END ;;
  }

  dimension: category_0 {
    type: string
    sql: ${TABLE}.CATEGORY_0 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: companyname {
    type: string
    sql: ${TABLE}.COMPANYNAME ;;
  }

  dimension: consol_days_overdue {
    type: number
    sql: ${TABLE}.CONSOL_DAYS_OVERDUE ;;
  }

  dimension: consol_deposit_balance {
    type: number
    sql: ${TABLE}.CONSOL_DEPOSIT_BALANCE ;;
  }

  dimension: consol_deposit_balance_foreign {
    type: number
    sql: ${TABLE}.CONSOL_DEPOSIT_BALANCE_FOREIGN ;;
  }

  dimension: consol_openbalance {
    type: number
    sql: ${TABLE}.CONSOL_OPENBALANCE ;;
  }

  dimension: consol_openbalance_foreign {
    type: number
    sql: ${TABLE}.CONSOL_OPENBALANCE_FOREIGN ;;
  }

  dimension: consol_unbilled_orders {
    type: number
    sql: ${TABLE}.CONSOL_UNBILLED_ORDERS ;;
  }

  dimension: consol_unbilled_orders_foreign {
    type: number
    sql: ${TABLE}.CONSOL_UNBILLED_ORDERS_FOREIGN ;;
  }

  dimension: converted_to_contact_id {
    type: number
    sql: ${TABLE}.CONVERTED_TO_CONTACT_ID ;;
  }

  dimension: converted_to_id {
    type: number
    sql: ${TABLE}.CONVERTED_TO_ID ;;
  }

  dimension: cost_estimate {
    type: number
    sql: ${TABLE}.COST_ESTIMATE ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.CREATE_DATE ;;
  }

  dimension: credithold {
    type: string
    sql: ${TABLE}.CREDITHOLD ;;
  }

  dimension: creditlimit {
    type: number
    sql: ${TABLE}.CREDITLIMIT ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
  }

  dimension: customer_extid {
    type: string
    sql: ${TABLE}.CUSTOMER_EXTID ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: customer_type_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TYPE_ID ;;
  }

  dimension_group: date_calculated_start {
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
    sql: ${TABLE}.DATE_CALCULATED_START ;;
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

  dimension_group: date_convsersion {
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
    sql: ${TABLE}.DATE_CONVSERSION ;;
  }

  dimension_group: date_first_order {
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
    sql: ${TABLE}.DATE_FIRST_ORDER ;;
  }

  dimension_group: date_first_sale {
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
    sql: ${TABLE}.DATE_FIRST_SALE ;;
  }

  dimension_group: date_gross_lead {
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
    sql: ${TABLE}.DATE_GROSS_LEAD ;;
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

  dimension_group: date_last_order {
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
    sql: ${TABLE}.DATE_LAST_ORDER ;;
  }

  dimension_group: date_last_sale {
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
    sql: ${TABLE}.DATE_LAST_SALE ;;
  }

  dimension_group: date_lead {
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
    sql: ${TABLE}.DATE_LEAD ;;
  }

  dimension_group: date_prospect {
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
    sql: ${TABLE}.DATE_PROSPECT ;;
  }

  dimension_group: date_scheduled_end {
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
    sql: ${TABLE}.DATE_SCHEDULED_END ;;
  }

  dimension: days_overdue {
    type: number
    sql: ${TABLE}.DAYS_OVERDUE ;;
  }

  dimension: dd_file_format_id {
    type: number
    sql: ${TABLE}.DD_FILE_FORMAT_ID ;;
  }

  dimension: default_order_priority {
    type: number
    sql: ${TABLE}.DEFAULT_ORDER_PRIORITY ;;
  }

  dimension: default_receivables_account_id {
    type: number
    sql: ${TABLE}.DEFAULT_RECEIVABLES_ACCOUNT_ID ;;
  }

  dimension: deposit_balance {
    type: number
    sql: ${TABLE}.DEPOSIT_BALANCE ;;
  }

  dimension: deposit_balance_foreign {
    type: number
    sql: ${TABLE}.DEPOSIT_BALANCE_FOREIGN ;;
  }

  dimension: dic {
    type: string
    sql: ${TABLE}.DIC ;;
  }

  dimension: direct_debit {
    type: string
    sql: ${TABLE}.DIRECT_DEBIT ;;
  }

  dimension: eft_bill_payment {
    type: string
    sql: ${TABLE}.EFT_BILL_PAYMENT ;;
  }

  dimension: eft_customer_refund_payment {
    type: string
    sql: ${TABLE}.EFT_CUSTOMER_REFUND_PAYMENT ;;
  }

  dimension: eft_file_format_id {
    type: number
    sql: ${TABLE}.EFT_FILE_FORMAT_ID ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: email_address_for_payment_not {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS_FOR_PAYMENT_NOT ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.ENTITY_ID ;;
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

  dimension_group: expected_close {
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
    sql: ${TABLE}.EXPECTED_CLOSE ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.FAX ;;
  }

  dimension: first_sale_period_id {
    type: number
    sql: ${TABLE}.FIRST_SALE_PERIOD_ID ;;
  }

  dimension_group: first_visit {
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
    sql: ${TABLE}.FIRST_VISIT ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.FIRSTNAME ;;
  }

  dimension: forecast_based_on_allocations {
    type: string
    sql: ${TABLE}.FORECAST_BASED_ON_ALLOCATIONS ;;
  }

  dimension: forecast_charge_run_on_demand {
    type: string
    sql: ${TABLE}.FORECAST_CHARGE_RUN_ON_DEMAND ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}.HOME_PHONE ;;
  }

  dimension: ico {
    type: string
    sql: ${TABLE}.ICO ;;
  }

  dimension: id_number_in_the_country_of_r {
    type: string
    sql: ${TABLE}.ID_NUMBER_IN_THE_COUNTRY_OF_R ;;
  }

  dimension: id_type_in_the_country_of_r_id {
    type: number
    sql: ${TABLE}.ID_TYPE_IN_THE_COUNTRY_OF_R_ID ;;
  }

  dimension: industry_id {
    type: number
    sql: ${TABLE}.INDUSTRY_ID ;;
  }

  dimension: is_exempt_time {
    type: string
    sql: ${TABLE}.IS_EXEMPT_TIME ;;
  }

  dimension: is_explicit_conversion {
    type: string
    sql: ${TABLE}.IS_EXPLICIT_CONVERSION ;;
  }

  dimension: is_job {
    type: string
    sql: ${TABLE}.IS_JOB ;;
  }

  dimension: is_limit_time_to_assignees {
    type: string
    sql: ${TABLE}.IS_LIMIT_TIME_TO_ASSIGNEES ;;
  }

  dimension: is_person {
    type: string
    sql: ${TABLE}.IS_PERSON ;;
  }

  dimension: is_productive_time {
    type: string
    sql: ${TABLE}.IS_PRODUCTIVE_TIME ;;
  }

  dimension: is_project_completely_billed {
    type: string
    sql: ${TABLE}.IS_PROJECT_COMPLETELY_BILLED ;;
  }

  dimension: is_source_item_from_brc {
    type: string
    sql: ${TABLE}.IS_SOURCE_ITEM_FROM_BRC ;;
  }

  dimension: is_utilized_time {
    type: string
    sql: ${TABLE}.IS_UTILIZED_TIME ;;
  }

  dimension: isemailhtml {
    type: string
    sql: ${TABLE}.ISEMAILHTML ;;
  }

  dimension: isemailpdf {
    type: string
    sql: ${TABLE}.ISEMAILPDF ;;
  }

  dimension: isinactive {
    type: string
    sql: ${TABLE}.ISINACTIVE ;;
  }

  dimension: istaxable {
    type: string
    sql: ${TABLE}.ISTAXABLE ;;
  }

  dimension_group: job_end {
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
    sql: ${TABLE}.JOB_END ;;
  }

  dimension_group: job_start {
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
    sql: ${TABLE}.JOB_START ;;
  }

  dimension: job_type_id {
    type: number
    sql: ${TABLE}.JOB_TYPE_ID ;;
  }

  dimension: labor_budget_from_allocations {
    type: string
    sql: ${TABLE}.LABOR_BUDGET_FROM_ALLOCATIONS ;;
  }

  dimension: language_id {
    type: string
    sql: ${TABLE}.LANGUAGE_ID ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LAST_MODIFIED_DATE ;;
  }

  dimension: last_sale_period_id {
    type: number
    sql: ${TABLE}.LAST_SALE_PERIOD_ID ;;
  }

  dimension_group: last_sales_activity {
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
    sql: ${TABLE}.LAST_SALES_ACTIVITY ;;
  }

  dimension_group: last_visit {
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
    sql: ${TABLE}.LAST_VISIT ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.LASTNAME ;;
  }

  dimension: lead_source_id {
    type: number
    sql: ${TABLE}.LEAD_SOURCE_ID ;;
  }

  dimension: line1 {
    type: string
    sql: ${TABLE}.LINE1 ;;
  }

  dimension: line2 {
    type: string
    sql: ${TABLE}.LINE2 ;;
  }

  dimension: line3 {
    type: string
    sql: ${TABLE}.LINE3 ;;
  }

  dimension: loginaccess {
    type: string
    sql: ${TABLE}.LOGINACCESS ;;
  }

  dimension: lsa_link {
    type: string
    sql: ${TABLE}.LSA_LINK ;;
  }

  dimension: lsa_link_name {
    type: string
    sql: ${TABLE}.LSA_LINK_NAME ;;
  }

  dimension: middlename {
    type: string
    sql: ${TABLE}.MIDDLENAME ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.MOBILE_PHONE ;;
  }

  dimension: multiple_price_id {
    type: number
    sql: ${TABLE}.MULTIPLE_PRICE_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: no__of_employees {
    type: number
    sql: ${TABLE}.NO__OF_EMPLOYEES ;;
  }

  dimension: openbalance {
    type: number
    sql: ${TABLE}.OPENBALANCE ;;
  }

  dimension: openbalance_foreign {
    type: number
    sql: ${TABLE}.OPENBALANCE_FOREIGN ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}.PARTNER_ID ;;
  }

  dimension: payment_terms_id {
    type: number
    sql: ${TABLE}.PAYMENT_TERMS_ID ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension: primary_contact_id {
    type: number
    sql: ${TABLE}.PRIMARY_CONTACT_ID ;;
  }

  dimension: print_on_check_as {
    type: string
    sql: ${TABLE}.PRINT_ON_CHECK_AS ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.PROBABILITY ;;
  }

  dimension: project_expense_type_id {
    type: number
    sql: ${TABLE}.PROJECT_EXPENSE_TYPE_ID ;;
  }

  dimension: project_manager_id {
    type: number
    sql: ${TABLE}.PROJECT_MANAGER_ID ;;
  }

  dimension_group: projected_end {
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
    sql: ${TABLE}.PROJECTED_END ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.REFERRER ;;
  }

  dimension: reminderdays {
    type: number
    sql: ${TABLE}.REMINDERDAYS ;;
  }

  dimension_group: renewal {
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
    sql: ${TABLE}.RENEWAL ;;
  }

  dimension: represents_subsidiary_id {
    type: number
    sql: ${TABLE}.REPRESENTS_SUBSIDIARY_ID ;;
  }

  dimension: resalenumber {
    type: string
    sql: ${TABLE}.RESALENUMBER ;;
  }

  dimension: rev_rec_forecast_rule_id {
    type: number
    sql: ${TABLE}.REV_REC_FORECAST_RULE_ID ;;
  }

  dimension: rev_rec_forecast_template {
    type: number
    sql: ${TABLE}.REV_REC_FORECAST_TEMPLATE ;;
  }

  dimension: revenue_estimate {
    type: number
    sql: ${TABLE}.REVENUE_ESTIMATE ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.SALUTATION ;;
  }

  dimension: scheduling_method_id {
    type: string
    sql: ${TABLE}.SCHEDULING_METHOD_ID ;;
  }

  dimension: ship_complete {
    type: string
    sql: ${TABLE}.SHIP_COMPLETE ;;
  }

  dimension: shipaddress {
    type: string
    sql: ${TABLE}.SHIPADDRESS ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: status_descr {
    type: string
    sql: ${TABLE}.STATUS_DESCR ;;
  }

  dimension: status_probability {
    type: number
    sql: ${TABLE}.STATUS_PROBABILITY ;;
  }

  dimension: status_read_only {
    type: string
    sql: ${TABLE}.STATUS_READ_ONLY ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SUBSIDIARY_ID ;;
  }

  dimension: tax_contact_first_name {
    type: string
    sql: ${TABLE}.TAX_CONTACT_FIRST_NAME ;;
  }

  dimension: tax_contact_id {
    type: number
    sql: ${TABLE}.TAX_CONTACT_ID ;;
  }

  dimension: tax_contact_last_name {
    type: string
    sql: ${TABLE}.TAX_CONTACT_LAST_NAME ;;
  }

  dimension: tax_contact_middle_name {
    type: string
    sql: ${TABLE}.TAX_CONTACT_MIDDLE_NAME ;;
  }

  dimension: tax_item_id {
    type: number
    sql: ${TABLE}.TAX_ITEM_ID ;;
  }

  dimension: tax_number {
    type: string
    sql: ${TABLE}.TAX_NUMBER ;;
  }

  dimension: territory_id {
    type: number
    sql: ${TABLE}.TERRITORY_ID ;;
  }

  dimension: third_party_acct {
    type: string
    sql: ${TABLE}.THIRD_PARTY_ACCT ;;
  }

  dimension: third_party_carrier {
    type: string
    sql: ${TABLE}.THIRD_PARTY_CARRIER ;;
  }

  dimension: third_party_country {
    type: string
    sql: ${TABLE}.THIRD_PARTY_COUNTRY ;;
  }

  dimension: third_party_zip_code {
    type: string
    sql: ${TABLE}.THIRD_PARTY_ZIP_CODE ;;
  }

  dimension: time_approval_type_id {
    type: number
    sql: ${TABLE}.TIME_APPROVAL_TYPE_ID ;;
  }

  dimension: top_level_parent_id {
    type: number
    sql: ${TABLE}.TOP_LEVEL_PARENT_ID ;;
  }

  dimension: transactions_need_approval {
    type: string
    sql: ${TABLE}.TRANSACTIONS_NEED_APPROVAL ;;
  }

  dimension: uen {
    type: string
    sql: ${TABLE}.UEN ;;
  }

  dimension: unbilled_orders {
    type: number
    sql: ${TABLE}.UNBILLED_ORDERS ;;
  }

  dimension: unbilled_orders_foreign {
    type: number
    sql: ${TABLE}.UNBILLED_ORDERS_FOREIGN ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: use_calculated_billing_budget {
    type: string
    sql: ${TABLE}.USE_CALCULATED_BILLING_BUDGET ;;
  }

  dimension: use_calculated_cost_budget {
    type: string
    sql: ${TABLE}.USE_CALCULATED_COST_BUDGET ;;
  }

  dimension: use_percent_complete_override {
    type: string
    sql: ${TABLE}.USE_PERCENT_COMPLETE_OVERRIDE ;;
  }

  dimension: vat_reg_number {
    type: string
    sql: ${TABLE}.VAT_REG_NUMBER ;;
  }

  dimension: vat_registration_no {
    type: string
    sql: ${TABLE}.VAT_REGISTRATION_NO ;;
  }

  dimension: web_lead {
    type: string
    sql: ${TABLE}.WEB_LEAD ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.ZIPCODE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      firstname,
      full_name,
      tax_contact_first_name,
      tax_contact_last_name,
      tax_contact_middle_name,
      companyname,
      lastname,
      lsa_link_name,
      middlename,
      name
    ]
  }
}
