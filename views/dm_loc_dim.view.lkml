view: dm_loc_dim {
  sql_table_name: EDW.DM_LOC_DIM ;;

  dimension: addr {
    type: string
    sql: ${TABLE}.ADDR ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: cntry {
    type: string
    sql: ${TABLE}.CNTRY ;;
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

  dimension: loc_dim_id {
    type: number
    sql: ${TABLE}.LOC_DIM_ID ;;
  }

  dimension: loc_is_inact_flg {
    type: string
    sql: ${TABLE}.LOC_IS_INACT_FLG ;;
  }

  dimension: loc_name {
    type: string
    sql: ${TABLE}.LOC_NAME ;;
  }

  dimension: loc_ns_id {
    type: number
    sql: ${TABLE}.LOC_NS_ID ;;
  }

  dimension: loc_parnt_dim_id {
    type: number
    sql: ${TABLE}.LOC_PARNT_DIM_ID ;;
  }

  dimension: loc_parnt_name {
    type: string
    sql: ${TABLE}.LOC_PARNT_NAME ;;
  }

  dimension: loc_parnt_ns_id {
    type: number
    sql: ${TABLE}.LOC_PARNT_NS_ID ;;
  }

  dimension: postl_code {
    type: string
    sql: ${TABLE}.POSTL_CODE ;;
  }

  dimension: st {
    type: string
    sql: ${TABLE}.ST ;;
  }

  measure: count {
    type: count
    drill_fields: [loc_parnt_name, loc_name]
  }
}
