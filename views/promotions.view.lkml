view: promotions {
  sql_table_name: EDW.PROMOTIONS ;;

  dimension_group: promo_begin {
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
    sql: ${TABLE}.PROMO_BEGIN_DATE ;;
  }

  dimension: promo_category {
    type: string
    sql: ${TABLE}.PROMO_CATEGORY ;;
  }

  dimension: promo_category_id {
    type: number
    sql: ${TABLE}.PROMO_CATEGORY_ID ;;
  }

  dimension: promo_cost {
    type: number
    sql: ${TABLE}.PROMO_COST ;;
  }

  dimension_group: promo_end {
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
    sql: ${TABLE}.PROMO_END_DATE ;;
  }

  dimension: promo_id {
    type: number
    sql: ${TABLE}.PROMO_ID ;;
  }

  dimension: promo_name {
    type: string
    sql: ${TABLE}.PROMO_NAME ;;
  }

  dimension: promo_subcategory {
    type: string
    sql: ${TABLE}.PROMO_SUBCATEGORY ;;
  }

  dimension: promo_subcategory_id {
    type: number
    sql: ${TABLE}.PROMO_SUBCATEGORY_ID ;;
  }

  dimension: promo_total {
    type: string
    sql: ${TABLE}.PROMO_TOTAL ;;
  }

  dimension: promo_total_id {
    type: number
    sql: ${TABLE}.PROMO_TOTAL_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [promo_name]
  }
}
