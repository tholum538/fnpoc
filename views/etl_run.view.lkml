view: etl_run {
  sql_table_name: EDW.ETL_RUN ;;
  drill_fields: [etl_run_id]

  dimension: etl_run_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ETL_RUN_ID ;;
  }

  dimension: etl_pkg_nm {
    type: string
    sql: ${TABLE}.ETL_PKG_NM ;;
  }

  dimension_group: etl_run_bus_prd_end_dts {
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
    sql: ${TABLE}.ETL_RUN_BUS_PRD_END_DTS ;;
  }

  dimension_group: etl_run_end_dts {
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
    sql: ${TABLE}.ETL_RUN_END_DTS ;;
  }

  dimension_group: etl_run_strt_dts {
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
    sql: ${TABLE}.ETL_RUN_STRT_DTS ;;
  }

  dimension: etl_run_typ_nm {
    type: string
    sql: ${TABLE}.ETL_RUN_TYP_NM ;;
  }

  measure: count {
    type: count
    drill_fields: [etl_run_id, etl_bal_ctrl_execn.count, etl_err_log.count, etl_proc_execn.count, etl_proc_execn_targ_tbl.count]
  }
}
