view: sales {
  sql_table_name: EDW.SALES ;;

  dimension: amount_sold {
    type: number
    sql: ${TABLE}.AMOUNT_SOLD ;;
  }

  dimension: channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: prod_id {
    type: number
    sql: ${TABLE}.PROD_ID ;;
  }

  dimension: promo_id {
    type: number
    sql: ${TABLE}.PROMO_ID ;;
  }

  dimension: quantity_sold {
    type: number
    sql: ${TABLE}.QUANTITY_SOLD ;;
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

  measure: count {
    type: count
    drill_fields: [channels.channel_id]
  }
}
