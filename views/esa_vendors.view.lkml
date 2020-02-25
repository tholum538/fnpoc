view: esa_vendors {
  sql_table_name: EDW.ESA_VENDORS ;;

  dimension: accountnumber {
    type: string
    sql: ${TABLE}.ACCOUNTNUMBER ;;
  }

  dimension: altemail {
    type: string
    sql: ${TABLE}.ALTEMAIL ;;
  }

  dimension: altphone {
    type: string
    sql: ${TABLE}.ALTPHONE ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.ANNUAL_REVENUE ;;
  }

  dimension: billaddress {
    type: string
    sql: ${TABLE}.BILLADDRESS ;;
  }

  dimension: billing_class_id {
    type: number
    sql: ${TABLE}.BILLING_CLASS_ID ;;
  }

  dimension: brn {
    type: string
    sql: ${TABLE}.BRN ;;
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

  dimension: creditlimit {
    type: number
    sql: ${TABLE}.CREDITLIMIT ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
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

  dimension: dd_file_format_id {
    type: number
    sql: ${TABLE}.DD_FILE_FORMAT_ID ;;
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

  dimension: fax {
    type: string
    sql: ${TABLE}.FAX ;;
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

  dimension: in_transit_balance {
    type: number
    sql: ${TABLE}.IN_TRANSIT_BALANCE ;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}.INCOTERM ;;
  }

  dimension: industry_id {
    type: number
    sql: ${TABLE}.INDUSTRY_ID ;;
  }

  dimension: is1099_eligible {
    type: string
    sql: ${TABLE}.IS1099ELIGIBLE ;;
  }

  dimension: is_person {
    type: string
    sql: ${TABLE}.IS_PERSON ;;
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

  dimension: labor_cost {
    type: number
    sql: ${TABLE}.LABOR_COST ;;
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

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.MOBILE_PHONE ;;
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

  dimension: payables_account_id {
    type: number
    sql: ${TABLE}.PAYABLES_ACCOUNT_ID ;;
  }

  dimension: payment_terms_id {
    type: number
    sql: ${TABLE}.PAYMENT_TERMS_ID ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension: printoncheckas {
    type: string
    sql: ${TABLE}.PRINTONCHECKAS ;;
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

  dimension: represents_subsidiary_id {
    type: number
    sql: ${TABLE}.REPRESENTS_SUBSIDIARY_ID ;;
  }

  dimension: shipaddress {
    type: string
    sql: ${TABLE}.SHIPADDRESS ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: subsidiary {
    type: number
    sql: ${TABLE}.SUBSIDIARY ;;
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

  dimension: tax_number {
    type: string
    sql: ${TABLE}.TAX_NUMBER ;;
  }

  dimension: taxidnum {
    type: string
    sql: ${TABLE}.TAXIDNUM ;;
  }

  dimension: time_approver_id {
    type: number
    sql: ${TABLE}.TIME_APPROVER_ID ;;
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

  dimension: vat_registration_no {
    type: string
    sql: ${TABLE}.VAT_REGISTRATION_NO ;;
  }

  dimension: vendor_extid {
    type: string
    sql: ${TABLE}.VENDOR_EXTID ;;
  }

  dimension: vendor_id {
    type: number
    sql: ${TABLE}.VENDOR_ID ;;
  }

  dimension: vendor_type_id {
    type: number
    sql: ${TABLE}.VENDOR_TYPE_ID ;;
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
      lsa_link_name,
      name,
      tax_contact_first_name,
      tax_contact_last_name,
      tax_contact_middle_name,
      companyname,
      full_name
    ]
  }
}
