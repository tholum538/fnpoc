view: esa_posting_account_activity {
  sql_table_name: EDW.ESA_POSTING_ACCOUNT_ACTIVITY ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: accounting_book_id {
    type: number
    sql: ${TABLE}.ACCOUNTING_BOOK_ID ;;
  }

  dimension: accounting_period_id {
    type: number
    sql: ${TABLE}.ACCOUNTING_PERIOD_ID ;;
  }

  dimension_group: activity {
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
    sql: ${TABLE}.ACTIVITY_DATE ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: amount_foreign {
    type: number
    sql: ${TABLE}.AMOUNT_FOREIGN ;;
  }

  dimension: class_id {
    type: number
    sql: ${TABLE}.CLASS_ID ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}.DEPARTMENT_ID ;;
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

  dimension: item_id {
    type: number
    sql: ${TABLE}.ITEM_ID ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}.PARTNER_ID ;;
  }

  dimension: promotion_code_id {
    type: number
    sql: ${TABLE}.PROMOTION_CODE_ID ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.QUANTITY ;;
  }

  dimension: sales_rep_id {
    type: number
    sql: ${TABLE}.SALES_REP_ID ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SUBSIDIARY_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
