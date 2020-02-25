view: etl_src_file_hdr {
  sql_table_name: EDW.ETL_SRC_FILE_HDR ;;

  dimension: curr_vrsn_in {
    type: string
    sql: ${TABLE}.CURR_VRSN_IN ;;
  }

  dimension: etl_src_file_hdr_vl {
    type: string
    sql: ${TABLE}.ETL_SRC_FILE_HDR_VL ;;
  }

  dimension: etl_src_file_nm {
    type: string
    sql: ${TABLE}.ETL_SRC_FILE_NM ;;
  }

  dimension: etl_src_file_vrsn_vl {
    type: string
    sql: ${TABLE}.ETL_SRC_FILE_VRSN_VL ;;
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
