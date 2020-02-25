view: dmv_item_dim {
  sql_table_name: EDW.DMV_ITEM_DIM ;;

  dimension: item_dim_id {
    type: number
    sql: ${TABLE}.ITEM_DIM_ID ;;
  }

  dimension: item_is_inact_flg {
    type: string
    sql: ${TABLE}.ITEM_IS_INACT_FLG ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.ITEM_NAME ;;
  }

  dimension: item_name_l1 {
    type: string
    sql: ${TABLE}.ITEM_NAME_L1 ;;
  }

  dimension: item_name_l2 {
    type: string
    sql: ${TABLE}.ITEM_NAME_L2 ;;
  }

  dimension: item_name_l3 {
    type: string
    sql: ${TABLE}.ITEM_NAME_L3 ;;
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
    drill_fields: [item_name]
  }
}
