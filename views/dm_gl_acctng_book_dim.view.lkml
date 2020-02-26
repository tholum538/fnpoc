view: dm_gl_acctng_book_dim {
  sql_table_name: EDW.DM_GL_ACCTNG_BOOK_DIM ;;

  dimension: acctng_book_name {
    type: string
    sql: ${TABLE}.ACCTNG_BOOK_NAME ;;
  }

  dimension: acctng_book_ns_id {
    type: number
    sql: ${TABLE}.ACCTNG_BOOK_NS_ID ;;
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

  dimension: gl_acctng_book_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.GL_ACCTNG_BOOK_DIM_ID ;;
  }

  dimension: is_adj_only {
    type: string
    sql: ${TABLE}.IS_ADJ_ONLY ;;
  }

  dimension: is_arangmt_lvl_recls {
    type: string
    sql: ${TABLE}.IS_ARANGMT_LVL_RECLS ;;
  }

  dimension: is_cnsldtd {
    type: string
    sql: ${TABLE}.IS_CNSLDTD ;;
  }

  dimension: is_contgnt_rev_hndlng {
    type: string
    sql: ${TABLE}.IS_CONTGNT_REV_HNDLNG ;;
  }

  dimension: is_incl_chld_sbsdrs {
    type: string
    sql: ${TABLE}.IS_INCL_CHLD_SBSDRS ;;
  }

  dimension: is_prim {
    type: string
    sql: ${TABLE}.IS_PRIM ;;
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

  dimension: stat {
    type: string
    sql: ${TABLE}.STAT ;;
  }

  measure: count {
    type: count
    drill_fields: [acctng_book_name]
  }
}
