view: dmv_gl_acct_dim {
  sql_table_name: EDW.DMV_GL_ACCT_DIM ;;

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

  dimension: acct_is_left_side_flg {
    type: string
    sql: ${TABLE}.ACCT_IS_LEFT_SIDE_FLG ;;
  }

  dimension: acct_legl_name {
    type: string
    sql: ${TABLE}.ACCT_LEGL_NAME ;;
  }

  dimension: acct_name {
    type: string
    sql: ${TABLE}.ACCT_NAME ;;
  }

  dimension: acct_name_l1 {
    type: string
    sql: ${TABLE}.ACCT_NAME_L1 ;;
  }

  dimension: acct_name_l2 {
    type: string
    sql: ${TABLE}.ACCT_NAME_L2 ;;
  }

  dimension: acct_name_l3 {
    type: string
    sql: ${TABLE}.ACCT_NAME_L3 ;;
  }

  dimension: acct_name_l4 {
    type: string
    sql: ${TABLE}.ACCT_NAME_L4 ;;
  }

  dimension: acct_name_l5 {
    type: string
    sql: ${TABLE}.ACCT_NAME_L5 ;;
  }

  dimension: acct_num {
    type: string
    sql: ${TABLE}.ACCT_NUM ;;
  }

  dimension: acct_num_l1 {
    type: string
    sql: ${TABLE}.ACCT_NUM_L1 ;;
  }

  dimension: acct_num_l2 {
    type: string
    sql: ${TABLE}.ACCT_NUM_L2 ;;
  }

  dimension: acct_num_l3 {
    type: string
    sql: ${TABLE}.ACCT_NUM_L3 ;;
  }

  dimension: acct_num_l4 {
    type: string
    sql: ${TABLE}.ACCT_NUM_L4 ;;
  }

  dimension: acct_num_l5 {
    type: string
    sql: ${TABLE}.ACCT_NUM_L5 ;;
  }

  dimension: acct_typ {
    type: string
    sql: ${TABLE}.ACCT_TYP ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.CLASS_NAME ;;
  }

  dimension: curncy_name {
    type: string
    sql: ${TABLE}.CURNCY_NAME ;;
  }

  dimension: dept_name {
    type: string
    sql: ${TABLE}.DEPT_NAME ;;
  }

  dimension: gl_acct_dim_id {
    type: number
    sql: ${TABLE}.GL_ACCT_DIM_ID ;;
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
      acct_name,
      dept_name,
      curncy_name,
      loc_name,
      class_name,
      acct_legl_name
    ]
  }
}
