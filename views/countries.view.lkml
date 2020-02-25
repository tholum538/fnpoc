view: countries {
  sql_table_name: EDW.COUNTRIES ;;
  drill_fields: [country_id]

  dimension: country_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: country_iso_code {
    type: string
    sql: ${TABLE}.COUNTRY_ISO_CODE ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: country_name_hist {
    type: string
    sql: ${TABLE}.COUNTRY_NAME_HIST ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.COUNTRY_REGION ;;
  }

  dimension: country_region_id {
    type: number
    sql: ${TABLE}.COUNTRY_REGION_ID ;;
  }

  dimension: country_subregion {
    type: string
    sql: ${TABLE}.COUNTRY_SUBREGION ;;
  }

  dimension: country_subregion_id {
    type: number
    sql: ${TABLE}.COUNTRY_SUBREGION_ID ;;
  }

  dimension: country_total {
    type: string
    sql: ${TABLE}.COUNTRY_TOTAL ;;
  }

  dimension: country_total_id {
    type: number
    sql: ${TABLE}.COUNTRY_TOTAL_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [country_id, country_name]
  }
}
