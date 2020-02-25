view: esa_budget {
  sql_table_name: EDW.ESA_BUDGET ;;

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

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension_group: budget {
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
    sql: ${TABLE}.BUDGET_DATE ;;
  }

  dimension: budget_id {
    type: number
    sql: ${TABLE}.BUDGET_ID ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CATEGORY_ID ;;
  }

  dimension: class_id {
    type: number
    sql: ${TABLE}.CLASS_ID ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}.DEPARTMENT_ID ;;
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

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SUBSIDIARY_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
