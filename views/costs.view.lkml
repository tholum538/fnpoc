view: costs {
  sql_table_name: EDW.COSTS ;;

  dimension: channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: prod_id {
    type: number
    sql: ${TABLE}.PROD_ID ;;
  }

  dimension: promo_id {
    type: number
    sql: ${TABLE}.PROMO_ID ;;
  }

  dimension_group: time_id {
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
    sql: ${TABLE}.TIME_ID ;;
  }

  dimension: unit_cost {
    type: number
    sql: ${TABLE}.UNIT_COST ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.UNIT_PRICE ;;
  }

  measure: count {
    type: count
    drill_fields: [channels.channel_id]
  }
}
