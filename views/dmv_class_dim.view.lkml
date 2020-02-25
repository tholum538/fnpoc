view: dmv_class_dim {
  sql_table_name: EDW.DMV_CLASS_DIM ;;

  dimension: class_dim_id {
    type: number
    sql: ${TABLE}.CLASS_DIM_ID ;;
  }

  dimension: class_is_inact_flg {
    type: string
    sql: ${TABLE}.CLASS_IS_INACT_FLG ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.CLASS_NAME ;;
  }

  dimension: class_name_l1 {
    type: string
    sql: ${TABLE}.CLASS_NAME_L1 ;;
  }

  dimension: class_name_l2 {
    type: string
    sql: ${TABLE}.CLASS_NAME_L2 ;;
  }

  dimension: class_name_l3 {
    type: string
    sql: ${TABLE}.CLASS_NAME_L3 ;;
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
    drill_fields: [class_name]
  }
}
