view: etl_tbl {
  sql_table_name: EDW.ETL_TBL ;;

  dimension: curr_vrsn_in {
    type: string
    sql: ${TABLE}.CURR_VRSN_IN ;;
  }

  dimension: etl_mdl_vrsn_nm {
    type: string
    sql: ${TABLE}.ETL_MDL_VRSN_NM ;;
  }

  dimension: etl_tbl_nm {
    type: string
    sql: ${TABLE}.ETL_TBL_NM ;;
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
