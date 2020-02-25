view: channels {
  sql_table_name: EDW.CHANNELS ;;
  drill_fields: [channel_id]

  dimension: channel_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: channel_class {
    type: string
    sql: ${TABLE}.CHANNEL_CLASS ;;
  }

  dimension: channel_class_id {
    type: number
    sql: ${TABLE}.CHANNEL_CLASS_ID ;;
  }

  dimension: channel_desc {
    type: string
    sql: ${TABLE}.CHANNEL_DESC ;;
  }

  dimension: channel_total {
    type: string
    sql: ${TABLE}.CHANNEL_TOTAL ;;
  }

  dimension: channel_total_id {
    type: number
    sql: ${TABLE}.CHANNEL_TOTAL_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_id, costs.count, sales.count]
  }
}
