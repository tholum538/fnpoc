view: etl_err_log {
  sql_table_name: EDW.ETL_ERR_LOG ;;

  dimension: err_row_id {
    type: number
    sql: ${TABLE}.ERR_ROW_ID ;;
  }

  dimension_group: err_tstp {
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
    sql: ${TABLE}.ERR_TSTP ;;
  }

  dimension: etl_run_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ETL_RUN_ID ;;
  }

  dimension: etl_sess_nm {
    type: string
    sql: ${TABLE}.ETL_SESS_NM ;;
  }

  dimension: src_col_name {
    type: string
    sql: ${TABLE}.SRC_COL_NAME ;;
  }

  dimension: src_col_value {
    type: string
    sql: ${TABLE}.SRC_COL_VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: [src_col_name, etl_run.etl_run_id]
  }
}
