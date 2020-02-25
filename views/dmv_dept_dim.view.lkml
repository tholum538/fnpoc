view: dmv_dept_dim {
  sql_table_name: EDW.DMV_DEPT_DIM ;;

  dimension: dept_dim_id {
    type: number
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

  dimension: dept_name_l1 {
    type: string
    sql: ${TABLE}.DEPT_NAME_L1 ;;
  }

  dimension: dept_name_l2 {
    type: string
    sql: ${TABLE}.DEPT_NAME_L2 ;;
  }

  dimension: dept_name_l3 {
    type: string
    sql: ${TABLE}.DEPT_NAME_L3 ;;
  }

  dimension: dept_num {
    type: string
    sql: ${TABLE}.DEPT_NUM ;;
  }

  dimension: dept_num_l1 {
    type: string
    sql: ${TABLE}.DEPT_NUM_L1 ;;
  }

  dimension: dept_num_l2 {
    type: string
    sql: ${TABLE}.DEPT_NUM_L2 ;;
  }

  dimension: dept_num_l3 {
    type: string
    sql: ${TABLE}.DEPT_NUM_L3 ;;
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
    drill_fields: [dept_name]
  }
}
