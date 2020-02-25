view: etl_proc_execn_targ_tbl {
  sql_table_name: EDW.ETL_PROC_EXECN_TARG_TBL ;;

  dimension: etl_run_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ETL_RUN_ID ;;
  }

  dimension: etl_sess_actn_nm {
    type: string
    sql: ${TABLE}.ETL_SESS_ACTN_NM ;;
  }

  dimension: etl_sess_nm {
    type: string
    sql: ${TABLE}.ETL_SESS_NM ;;
  }

  dimension: targ_mdl_vrsn_nm {
    type: string
    sql: ${TABLE}.TARG_MDL_VRSN_NM ;;
  }

  dimension: targ_row_cn {
    type: number
    sql: ${TABLE}.TARG_ROW_CN ;;
  }

  dimension: targ_sum_am {
    type: number
    sql: ${TABLE}.TARG_SUM_AM ;;
  }

  dimension: targ_tbl_nm {
    type: string
    sql: ${TABLE}.TARG_TBL_NM ;;
  }

  measure: count {
    type: count
    drill_fields: [etl_run.etl_run_id]
  }
}
