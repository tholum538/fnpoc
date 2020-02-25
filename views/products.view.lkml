view: products {
  sql_table_name: EDW.PRODUCTS ;;

  dimension: prod_category {
    type: string
    sql: ${TABLE}.PROD_CATEGORY ;;
  }

  dimension: prod_category_desc {
    type: string
    sql: ${TABLE}.PROD_CATEGORY_DESC ;;
  }

  dimension: prod_category_id {
    type: number
    sql: ${TABLE}.PROD_CATEGORY_ID ;;
  }

  dimension: prod_desc {
    type: string
    sql: ${TABLE}.PROD_DESC ;;
  }

  dimension_group: prod_eff_from {
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
    sql: ${TABLE}.PROD_EFF_FROM ;;
  }

  dimension_group: prod_eff_to {
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
    sql: ${TABLE}.PROD_EFF_TO ;;
  }

  dimension: prod_id {
    type: number
    sql: ${TABLE}.PROD_ID ;;
  }

  dimension: prod_list_price {
    type: number
    sql: ${TABLE}.PROD_LIST_PRICE ;;
  }

  dimension: prod_min_price {
    type: number
    sql: ${TABLE}.PROD_MIN_PRICE ;;
  }

  dimension: prod_name {
    type: string
    sql: ${TABLE}.PROD_NAME ;;
  }

  dimension: prod_pack_size {
    type: string
    sql: ${TABLE}.PROD_PACK_SIZE ;;
  }

  dimension: prod_src_id {
    type: number
    sql: ${TABLE}.PROD_SRC_ID ;;
  }

  dimension: prod_status {
    type: string
    sql: ${TABLE}.PROD_STATUS ;;
  }

  dimension: prod_subcategory {
    type: string
    sql: ${TABLE}.PROD_SUBCATEGORY ;;
  }

  dimension: prod_subcategory_desc {
    type: string
    sql: ${TABLE}.PROD_SUBCATEGORY_DESC ;;
  }

  dimension: prod_subcategory_id {
    type: number
    sql: ${TABLE}.PROD_SUBCATEGORY_ID ;;
  }

  dimension: prod_total {
    type: string
    sql: ${TABLE}.PROD_TOTAL ;;
  }

  dimension: prod_total_id {
    type: number
    sql: ${TABLE}.PROD_TOTAL_ID ;;
  }

  dimension: prod_unit_of_measure {
    type: string
    sql: ${TABLE}.PROD_UNIT_OF_MEASURE ;;
  }

  dimension: prod_valid {
    type: string
    sql: ${TABLE}.PROD_VALID ;;
  }

  dimension: prod_weight_class {
    type: number
    sql: ${TABLE}.PROD_WEIGHT_CLASS ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.SUPPLIER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [prod_name]
  }
}
