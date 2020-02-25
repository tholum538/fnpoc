view: dmv_sbsdry_dim {
  sql_table_name: EDW.DMV_SBSDRY_DIM ;;

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

  dimension: sbsdry_dim_id {
    type: number
    sql: ${TABLE}.SBSDRY_DIM_ID ;;
  }

  dimension: sbsdry_is_inact_flg {
    type: string
    sql: ${TABLE}.SBSDRY_IS_INACT_FLG ;;
  }

  dimension: sbsdry_name {
    type: string
    sql: ${TABLE}.SBSDRY_NAME ;;
  }

  dimension: sbsdry_name_l1 {
    type: string
    sql: ${TABLE}.SBSDRY_NAME_L1 ;;
  }

  dimension: sbsdry_name_l2 {
    type: string
    sql: ${TABLE}.SBSDRY_NAME_L2 ;;
  }

  dimension: sbsdry_name_l3 {
    type: string
    sql: ${TABLE}.SBSDRY_NAME_L3 ;;
  }

  measure: count {
    type: count
    drill_fields: [sbsdry_name]
  }
}
