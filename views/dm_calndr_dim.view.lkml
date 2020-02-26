view: dm_calndr_dim {
  sql_table_name: EDW.DM_CALNDR_DIM ;;

  dimension: acctng_per_ns_id {
    type: number
    sql: ${TABLE}.ACCTNG_PER_NS_ID ;;
  }

  dimension: calndr_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.CALNDR_DIM_ID ;;
  }

  dimension: day_num {
    type: number
    sql: ${TABLE}.DAY_NUM ;;
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

  dimension: fscl_calndr_name {
    type: string
    sql: ${TABLE}.FSCL_CALNDR_NAME ;;
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

  dimension: mo_num {
    type: number
    sql: ${TABLE}.MO_NUM ;;
  }

  dimension: per_clsd_flg {
    type: string
    sql: ${TABLE}.PER_CLSD_FLG ;;
  }

  dimension_group: per_clsd_on {
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
    sql: ${TABLE}.PER_CLSD_ON_DATE ;;
  }

  dimension_group: per_end {
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
    sql: ${TABLE}.PER_END_DATE ;;
  }

  dimension: per_is_adj_flg {
    type: string
    sql: ${TABLE}.PER_IS_ADJ_FLG ;;
  }

  dimension: per_is_inact_flg {
    type: string
    sql: ${TABLE}.PER_IS_INACT_FLG ;;
  }

  dimension: per_name {
    type: string
    sql: ${TABLE}.PER_NAME ;;
  }

  dimension_group: per_strt {
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
    sql: ${TABLE}.PER_STRT_DATE ;;
  }

  dimension: qtr_name {
    type: string
    sql: ${TABLE}.QTR_NAME ;;
  }

  dimension: qtr_num {
    type: number
    sql: ${TABLE}.QTR_NUM ;;
  }

  dimension: yr_name {
    type: string
    sql: ${TABLE}.YR_NAME ;;
  }

  dimension: yr_num {
    type: number
    sql: ${TABLE}.YR_NUM ;;
  }

  measure: count {
    type: count
    drill_fields: [fscl_calndr_name, yr_name, per_name, qtr_name]
  }
}
