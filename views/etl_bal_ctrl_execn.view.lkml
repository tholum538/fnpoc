view: etl_bal_ctrl_execn {
  sql_table_name: EDW.ETL_BAL_CTRL_EXECN ;;

  dimension: adt_sts_ds {
    type: string
    sql: ${TABLE}.ADT_STS_DS ;;
  }

  dimension: chk_sum_tlrnc_pc {
    type: number
    sql: ${TABLE}.CHK_SUM_TLRNC_PC ;;
  }

  dimension: etl_run_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ETL_RUN_ID ;;
  }

  dimension_group: etl_sess_end_bus_prd_dts {
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
    sql: ${TABLE}.ETL_SESS_END_BUS_PRD_DTS ;;
  }

  dimension: etl_sess_nm {
    type: string
    sql: ${TABLE}.ETL_SESS_NM ;;
  }

  dimension_group: etl_sess_strt_bus_prd_dts {
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
    sql: ${TABLE}.ETL_SESS_STRT_BUS_PRD_DTS ;;
  }

  dimension_group: etl_sess_strt_dt {
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
    sql: ${TABLE}.ETL_SESS_STRT_DT ;;
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

  dimension: row_cn_tlrnc_pc {
    type: number
    sql: ${TABLE}.ROW_CN_TLRNC_PC ;;
  }

  dimension: src_mdl_vrsn_nm {
    type: string
    sql: ${TABLE}.SRC_MDL_VRSN_NM ;;
  }

  dimension: src_row_cn {
    type: number
    sql: ${TABLE}.SRC_ROW_CN ;;
  }

  dimension: src_sum_am {
    type: number
    sql: ${TABLE}.SRC_SUM_AM ;;
  }

  dimension: src_sum_col_nm {
    type: string
    sql: ${TABLE}.SRC_SUM_COL_NM ;;
  }

  dimension: src_tbl_nm {
    type: string
    sql: ${TABLE}.SRC_TBL_NM ;;
  }

  dimension: targ_mdl_vrsn_nm {
    type: string
    sql: ${TABLE}.TARG_MDL_VRSN_NM ;;
  }

  measure: targ_row_cn {
    type: number
    sql: ${TABLE}.TARG_ROW_CN ;;
  }

  measure: targ_sum_am {
    type: number
    sql: ${TABLE}.TARG_SUM_AM ;;
  }

  dimension: targ_sum_col_nm {
    type: string
    sql: ${TABLE}.TARG_SUM_COL_NM ;;
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
