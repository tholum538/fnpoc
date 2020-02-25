view: dm_pmt_provdr_dim {
  sql_table_name: EDW.DM_PMT_PROVDR_DIM ;;

  dimension: etl_curr_flg {
    type: string
    sql: ${TABLE}.ETL_CURR_FLG ;;
  }

  dimension: etl_dm_tag {
    type: string
    sql: ${TABLE}.ETL_DM_TAG ;;
  }

  dimension_group: etl_eff_from_dts {
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
    sql: ${TABLE}.ETL_EFF_FROM_DTS ;;
  }

  dimension: etl_err_row_id {
    type: number
    sql: ${TABLE}.ETL_ERR_ROW_ID ;;
  }

  dimension: etl_esa_tag {
    type: string
    sql: ${TABLE}.ETL_ESA_TAG ;;
  }

  dimension_group: etl_load {
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
    sql: ${TABLE}.ETL_LOAD_DATE ;;
  }

  dimension: etl_sys_src {
    type: string
    sql: ${TABLE}.ETL_SYS_SRC ;;
  }

  dimension_group: etl_update {
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
    sql: ${TABLE}.ETL_UPDATE_DATE ;;
  }

  dimension: pmt_provdr_desc {
    type: string
    sql: ${TABLE}.PMT_PROVDR_DESC ;;
  }

  dimension: pmt_provdr_dim_id {
    type: number
    sql: ${TABLE}.PMT_PROVDR_DIM_ID ;;
  }

  dimension: pmt_provdr_name {
    type: string
    sql: ${TABLE}.PMT_PROVDR_NAME ;;
  }

  dimension: pmt_provdr_type_name {
    type: string
    sql: ${TABLE}.PMT_PROVDR_TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [pmt_provdr_type_name, pmt_provdr_name]
  }
}
