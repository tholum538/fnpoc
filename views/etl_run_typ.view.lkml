view: etl_run_typ {
  sql_table_name: EDW.ETL_RUN_TYP ;;

  dimension: etl_run_typ_ds {
    type: string
    sql: ${TABLE}.ETL_RUN_TYP_DS ;;
  }

  dimension: etl_run_typ_nm {
    type: string
    sql: ${TABLE}.ETL_RUN_TYP_NM ;;
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
