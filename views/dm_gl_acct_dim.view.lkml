view: dm_gl_acct_dim {
  sql_table_name: EDW.DM_GL_ACCT_DIM ;;

  dimension: acct_desc {
    type: string
    sql: ${TABLE}.ACCT_DESC ;;
  }

  dimension: acct_is_bal_sht_flg {
    type: string
    sql: ${TABLE}.ACCT_IS_BAL_SHT_FLG ;;
  }

  dimension: acct_is_inact_flg {
    type: string
    sql: ${TABLE}.ACCT_IS_INACT_FLG ;;
  }

  dimension: acct_is_incl_chld_sbsdrs_flg {
    type: string
    sql: ${TABLE}.ACCT_IS_INCL_CHLD_SBSDRS_FLG ;;
  }

  dimension: acct_is_incl_in_elim_flg {
    type: string
    sql: ${TABLE}.ACCT_IS_INCL_IN_ELIM_FLG ;;
  }

  dimension: acct_is_incl_in_reval_flg {
    type: string
    sql: ${TABLE}.ACCT_IS_INCL_IN_REVAL_FLG ;;
  }

  dimension: acct_is_left_side_flg {
    type: string
    sql: ${TABLE}.ACCT_IS_LEFT_SIDE_FLG ;;
  }

  dimension: acct_is_sumry_flg {
    type: string
    sql: ${TABLE}.ACCT_IS_SUMRY_FLG ;;
  }

  dimension: acct_legl_name {
    type: string
    sql: ${TABLE}.ACCT_LEGL_NAME ;;
  }

  dimension: acct_name {
    type: string
    sql: ${TABLE}.ACCT_NAME ;;
  }

  dimension: acct_ns_id {
    type: number
    sql: ${TABLE}.ACCT_NS_ID ;;
  }

  dimension: acct_num {
    type: string
    sql: ${TABLE}.ACCT_NUM ;;
  }

  dimension: acct_parnt_ns_id {
    type: number
    sql: ${TABLE}.ACCT_PARNT_NS_ID ;;
  }

  dimension: acct_parnt_num {
    type: string
    sql: ${TABLE}.ACCT_PARNT_NUM ;;
  }

  dimension: acct_typ {
    type: string
    sql: ${TABLE}.ACCT_TYP ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.CLASS_NAME ;;
  }

  dimension: curncy_gnrl_rate_typ {
    type: string
    sql: ${TABLE}.CURNCY_GNRL_RATE_TYP ;;
  }

  dimension: curncy_name {
    type: string
    sql: ${TABLE}.CURNCY_NAME ;;
  }

  dimension: dept_name {
    type: string
    sql: ${TABLE}.DEPT_NAME ;;
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

  dimension: gl_acct_dim_id {
    type: number
    sql: ${TABLE}.GL_ACCT_DIM_ID ;;
  }

  dimension: gl_acct_parnt_dim_id {
    type: number
    sql: ${TABLE}.GL_ACCT_PARNT_DIM_ID ;;
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

  dimension: loc_name {
    type: string
    sql: ${TABLE}.LOC_NAME ;;
  }

  dimension: typ_seq {
    type: number
    sql: ${TABLE}.TYP_SEQ ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      curncy_name,
      acct_name,
      acct_legl_name,
      class_name,
      loc_name,
      dept_name
    ]
  }
}
