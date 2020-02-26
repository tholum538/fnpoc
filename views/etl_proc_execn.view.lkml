view: etl_proc_execn {
  sql_table_name: EDW.ETL_PROC_EXECN ;;

  dimension: comp_sts_ds {
    type: string
    sql: ${TABLE}.COMP_STS_DS ;;
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

  dimension: etl_sess_seq_id {
    type: number
    sql: ${TABLE}.ETL_SESS_SEQ_ID ;;
  }

  dimension_group: etl_sess_strt_dts {
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
    sql: ${TABLE}.ETL_SESS_STRT_DTS ;;
  }

  dimension: src_mdl_vrsn_nm {
    type: string
    sql: ${TABLE}.SRC_MDL_VRSN_NM ;;
  }

  measure: src_row_cn {
    type: number
    sql: ${TABLE}.SRC_ROW_CN ;;
  }

  measure: src_sum_am {
    type: number
    sql: ${TABLE}.SRC_SUM_AM ;;
  }

  dimension: src_tbl_nm {
    type: string
    sql: ${TABLE}.SRC_TBL_NM ;;
  }

  measure: count {
    type: count
    drill_fields: [etl_run.etl_run_id]
  }
}
