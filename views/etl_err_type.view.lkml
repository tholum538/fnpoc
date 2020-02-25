view: etl_err_type {
  sql_table_name: EDW.ETL_ERR_TYPE ;;

  dimension: err_catgry_name {
    type: string
    sql: ${TABLE}.ERR_CATGRY_NAME ;;
  }

  dimension: err_type_desc {
    type: string
    sql: ${TABLE}.ERR_TYPE_DESC ;;
  }

  dimension: err_type_id {
    type: number
    sql: ${TABLE}.ERR_TYPE_ID ;;
  }

  dimension: err_type_name {
    type: string
    sql: ${TABLE}.ERR_TYPE_NAME ;;
  }

  dimension: inact_flag {
    type: string
    sql: ${TABLE}.INACT_FLAG ;;
  }

  measure: count {
    type: count
    drill_fields: [err_type_name, err_catgry_name]
  }
}
