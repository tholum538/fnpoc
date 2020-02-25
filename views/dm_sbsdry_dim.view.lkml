view: dm_sbsdry_dim {
  sql_table_name: EDW.DM_SBSDRY_DIM ;;

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

  dimension: postl_code {
    type: string
    sql: ${TABLE}.POSTL_CODE ;;
  }

  dimension: sbsdry_dim_id {
    type: number
    sql: ${TABLE}.SBSDRY_DIM_ID ;;
  }

  dimension: sbsdry_fscl_calndr_name {
    type: string
    sql: ${TABLE}.SBSDRY_FSCL_CALNDR_NAME ;;
  }

  dimension: sbsdry_full_name {
    type: string
    sql: ${TABLE}.SBSDRY_FULL_NAME ;;
  }

  dimension: sbsdry_is_inact_flg {
    type: string
    sql: ${TABLE}.SBSDRY_IS_INACT_FLG ;;
  }

  dimension: sbsdry_legl_name {
    type: string
    sql: ${TABLE}.SBSDRY_LEGL_NAME ;;
  }

  dimension: sbsdry_name {
    type: string
    sql: ${TABLE}.SBSDRY_NAME ;;
  }

  dimension: sbsdry_ns_id {
    type: number
    sql: ${TABLE}.SBSDRY_NS_ID ;;
  }

  dimension: sbsdry_parnt_dim_id {
    type: number
    sql: ${TABLE}.SBSDRY_PARNT_DIM_ID ;;
  }

  dimension: sbsdry_parnt_name {
    type: string
    sql: ${TABLE}.SBSDRY_PARNT_NAME ;;
  }

  dimension: sbsdry_parnt_ns_id {
    type: number
    sql: ${TABLE}.SBSDRY_PARNT_NS_ID ;;
  }

  dimension: st {
    type: string
    sql: ${TABLE}.ST ;;
  }

  measure: count {
    type: count
    drill_fields: [sbsdry_full_name, sbsdry_name, sbsdry_parnt_name, sbsdry_fscl_calndr_name, sbsdry_legl_name]
  }
}
