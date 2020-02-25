view: dm_curncy_dim {
  sql_table_name: EDW.DM_CURNCY_DIM ;;

  dimension: curncy_dim_id {
    type: number
    sql: ${TABLE}.CURNCY_DIM_ID ;;
  }

  dimension: curncy_is_inact_flg {
    type: string
    sql: ${TABLE}.CURNCY_IS_INACT_FLG ;;
  }

  dimension: curncy_name {
    type: string
    sql: ${TABLE}.CURNCY_NAME ;;
  }

  dimension: curncy_ns_id {
    type: number
    sql: ${TABLE}.CURNCY_NS_ID ;;
  }

  dimension: curncy_symbl {
    type: string
    sql: ${TABLE}.CURNCY_SYMBL ;;
  }

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

  dimension: etl_src_sys {
    type: string
    sql: ${TABLE}.ETL_SRC_SYS ;;
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

  dimension: exch_rate {
    type: number
    sql: ${TABLE}.EXCH_RATE ;;
  }

  dimension: is_base_curncy_flg {
    type: string
    sql: ${TABLE}.IS_BASE_CURNCY_FLG ;;
  }

  dimension_group: last_mod {
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
    sql: ${TABLE}.LAST_MOD_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: [curncy_name]
  }
}
