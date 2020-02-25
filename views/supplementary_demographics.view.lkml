view: supplementary_demographics {
  sql_table_name: EDW.SUPPLEMENTARY_DEMOGRAPHICS ;;

  dimension: affinity_card {
    type: number
    sql: ${TABLE}.AFFINITY_CARD ;;
  }

  dimension: bookkeeping_application {
    type: number
    sql: ${TABLE}.BOOKKEEPING_APPLICATION ;;
  }

  dimension: bulk_pack_diskettes {
    type: number
    sql: ${TABLE}.BULK_PACK_DISKETTES ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: education {
    type: string
    sql: ${TABLE}.EDUCATION ;;
  }

  dimension: flat_panel_monitor {
    type: number
    sql: ${TABLE}.FLAT_PANEL_MONITOR ;;
  }

  dimension: home_theater_package {
    type: number
    sql: ${TABLE}.HOME_THEATER_PACKAGE ;;
  }

  dimension: household_size {
    type: string
    sql: ${TABLE}.HOUSEHOLD_SIZE ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.OCCUPATION ;;
  }

  dimension: os_doc_set_kanji {
    type: number
    sql: ${TABLE}.OS_DOC_SET_KANJI ;;
  }

  dimension: printer_supplies {
    type: number
    sql: ${TABLE}.PRINTER_SUPPLIES ;;
  }

  dimension: y_box_games {
    type: number
    sql: ${TABLE}.Y_BOX_GAMES ;;
  }

  dimension: yrs_residence {
    type: number
    sql: ${TABLE}.YRS_RESIDENCE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
