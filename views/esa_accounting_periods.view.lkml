view: esa_accounting_periods {
  sql_table_name: EDW.ESA_ACCOUNTING_PERIODS ;;

  dimension: accounting_period_id {
    type: number
    sql: ${TABLE}.ACCOUNTING_PERIOD_ID ;;
  }

  dimension: closed {
    type: string
    sql: ${TABLE}.CLOSED ;;
  }

  dimension: closed_accounts_payable {
    type: string
    sql: ${TABLE}.CLOSED_ACCOUNTS_PAYABLE ;;
  }

  dimension: closed_accounts_receivable {
    type: string
    sql: ${TABLE}.CLOSED_ACCOUNTS_RECEIVABLE ;;
  }

  dimension: closed_all {
    type: string
    sql: ${TABLE}.CLOSED_ALL ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}.CLOSED_ON ;;
  }

  dimension: closed_payroll {
    type: string
    sql: ${TABLE}.CLOSED_PAYROLL ;;
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

  dimension_group: ending {
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
    sql: ${TABLE}.ENDING ;;
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

  dimension: fiscal_calendar_id {
    type: number
    sql: ${TABLE}.FISCAL_CALENDAR_ID ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: is_adjustment {
    type: string
    sql: ${TABLE}.IS_ADJUSTMENT ;;
  }

  dimension: isinactive {
    type: string
    sql: ${TABLE}.ISINACTIVE ;;
  }

  dimension: locked_accounts_payable {
    type: string
    sql: ${TABLE}.LOCKED_ACCOUNTS_PAYABLE ;;
  }

  dimension: locked_accounts_receivable {
    type: string
    sql: ${TABLE}.LOCKED_ACCOUNTS_RECEIVABLE ;;
  }

  dimension: locked_all {
    type: string
    sql: ${TABLE}.LOCKED_ALL ;;
  }

  dimension: locked_payroll {
    type: string
    sql: ${TABLE}.LOCKED_PAYROLL ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension_group: starting {
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
    sql: ${TABLE}.STARTING ;;
  }

  dimension: year_0 {
    type: string
    sql: ${TABLE}.YEAR_0 ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}.YEAR_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [name, full_name]
  }
}
