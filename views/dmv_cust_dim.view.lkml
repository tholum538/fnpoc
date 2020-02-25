view: dmv_cust_dim {
  sql_table_name: EDW.DMV_CUST_DIM ;;

  dimension: cust_dim_id {
    type: number
    sql: ${TABLE}.CUST_DIM_ID ;;
  }

  dimension: cust_is_inact_flg {
    type: string
    sql: ${TABLE}.CUST_IS_INACT_FLG ;;
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.CUST_NAME ;;
  }

  dimension: cust_name_l1 {
    type: string
    sql: ${TABLE}.CUST_NAME_L1 ;;
  }

  dimension: cust_name_l2 {
    type: string
    sql: ${TABLE}.CUST_NAME_L2 ;;
  }

  dimension: cust_name_l3 {
    type: string
    sql: ${TABLE}.CUST_NAME_L3 ;;
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
    drill_fields: [cust_name]
  }
}
