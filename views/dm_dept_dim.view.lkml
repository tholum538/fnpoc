view: dm_dept_dim {
  sql_table_name: EDW.DM_DEPT_DIM ;;

  dimension: dept_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DEPT_DIM_ID ;;
  }

  dimension: dept_is_inact_flg {
    type: string
    sql: ${TABLE}.DEPT_IS_INACT_FLG ;;
  }

  dimension: dept_name {
    type: string
    sql: ${TABLE}.DEPT_NAME ;;
  }

  dimension: dept_ns_id {
    type: number
    sql: ${TABLE}.DEPT_NS_ID ;;
  }

  dimension: dept_num {
    type: string
    sql: ${TABLE}.DEPT_NUM ;;
  }

  dimension: dept_parnt_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DEPT_PARNT_DIM_ID ;;
  }

  dimension: dept_parnt_name {
    type: string
    sql: ${TABLE}.DEPT_PARNT_NAME ;;
  }

  dimension: dept_parnt_ns_id {
    type: number
    sql: ${TABLE}.DEPT_PARNT_NS_ID ;;
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

  measure: count {
    type: count
    drill_fields: [dept_name, dept_parnt_name]
  }
}
