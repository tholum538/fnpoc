view: etl_err_mstr {
  sql_table_name: EDW.ETL_ERR_MSTR ;;

  dimension: err_abbrv {
    type: string
    sql: ${TABLE}.ERR_ABBRV ;;
  }

  dimension: err_desc {
    type: string
    sql: ${TABLE}.ERR_DESC ;;
  }

  dimension: err_grp_name {
    type: string
    sql: ${TABLE}.ERR_GRP_NAME ;;
  }

  dimension: err_mstr_id {
    type: number
    sql: ${TABLE}.ERR_MSTR_ID ;;
  }

  dimension: err_num {
    type: number
    sql: ${TABLE}.ERR_NUM ;;
  }

  dimension: err_type_id {
    type: number
    sql: ${TABLE}.ERR_TYPE_ID ;;
  }

  dimension: inact_flag {
    type: string
    sql: ${TABLE}.INACT_FLAG ;;
  }

  dimension: usage_ind {
    type: string
    sql: ${TABLE}.USAGE_IND ;;
  }

  measure: count {
    type: count
    drill_fields: [err_grp_name]
  }
}
