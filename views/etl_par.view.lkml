view: etl_par {
  sql_table_name: EDW.ETL_PAR ;;

  dimension: dt_fmt_vl {
    type: string
    sql: ${TABLE}.DT_FMT_VL ;;
  }

  dimension: etl_par_nm {
    type: string
    sql: ${TABLE}.ETL_PAR_NM ;;
  }

  measure: etl_par_seq_nb {
    type: number
    sql: ${TABLE}.ETL_PAR_SEQ_NB ;;
  }

  dimension: etl_par_vl {
    type: string
    sql: ${TABLE}.ETL_PAR_VL ;;
  }

  dimension: etl_prim_nm {
    type: string
    sql: ${TABLE}.ETL_PRIM_NM ;;
  }

  dimension: etl_secndy_nm {
    type: string
    sql: ${TABLE}.ETL_SECNDY_NM ;;
  }

  dimension: etl_sect_cd {
    type: string
    sql: ${TABLE}.ETL_SECT_CD ;;
  }

  dimension_group: updt_dts {
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
    sql: ${TABLE}.UPDT_DTS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
