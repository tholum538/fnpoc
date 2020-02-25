view: dmv_loc_dim {
  sql_table_name: EDW.DMV_LOC_DIM ;;

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

  dimension: loc_name_l1 {
    type: string
    sql: ${TABLE}.LOC_NAME_L1 ;;
  }

  dimension: loc_name_l2 {
    type: string
    sql: ${TABLE}.LOC_NAME_L2 ;;
  }

  dimension: loc_name_l3 {
    type: string
    sql: ${TABLE}.LOC_NAME_L3 ;;
  }

  measure: count {
    type: count
    drill_fields: [loc_name]
  }
}
