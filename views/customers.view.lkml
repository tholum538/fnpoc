view: customers {
  sql_table_name: EDW.CUSTOMERS ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: cust_city {
    type: string
    sql: ${TABLE}.CUST_CITY ;;
  }

  dimension: cust_city_id {
    type: number
    sql: ${TABLE}.CUST_CITY_ID ;;
  }

  dimension: cust_credit_limit {
    type: number
    sql: ${TABLE}.CUST_CREDIT_LIMIT ;;
  }

  dimension_group: cust_eff_from {
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
    sql: ${TABLE}.CUST_EFF_FROM ;;
  }

  dimension_group: cust_eff_to {
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
    sql: ${TABLE}.CUST_EFF_TO ;;
  }

  dimension: cust_email {
    type: string
    sql: ${TABLE}.CUST_EMAIL ;;
  }

  dimension: cust_first_name {
    type: string
    sql: ${TABLE}.CUST_FIRST_NAME ;;
  }

  dimension: cust_gender {
    type: string
    sql: ${TABLE}.CUST_GENDER ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: cust_income_level {
    type: string
    sql: ${TABLE}.CUST_INCOME_LEVEL ;;
  }

  dimension: cust_last_name {
    type: string
    sql: ${TABLE}.CUST_LAST_NAME ;;
  }

  dimension: cust_main_phone_number {
    type: string
    sql: ${TABLE}.CUST_MAIN_PHONE_NUMBER ;;
  }

  dimension: cust_marital_status {
    type: string
    sql: ${TABLE}.CUST_MARITAL_STATUS ;;
  }

  dimension: cust_postal_code {
    type: string
    sql: ${TABLE}.CUST_POSTAL_CODE ;;
  }

  dimension: cust_src_id {
    type: number
    sql: ${TABLE}.CUST_SRC_ID ;;
  }

  dimension: cust_state_province {
    type: string
    sql: ${TABLE}.CUST_STATE_PROVINCE ;;
  }

  dimension: cust_state_province_id {
    type: number
    sql: ${TABLE}.CUST_STATE_PROVINCE_ID ;;
  }

  dimension: cust_street_address {
    type: string
    sql: ${TABLE}.CUST_STREET_ADDRESS ;;
  }

  dimension: cust_total {
    type: string
    sql: ${TABLE}.CUST_TOTAL ;;
  }

  dimension: cust_total_id {
    type: number
    sql: ${TABLE}.CUST_TOTAL_ID ;;
  }

  dimension: cust_valid {
    type: string
    sql: ${TABLE}.CUST_VALID ;;
  }

  dimension: cust_year_of_birth {
    type: number
    sql: ${TABLE}.CUST_YEAR_OF_BIRTH ;;
  }

  measure: count {
    type: count
    drill_fields: [cust_last_name, cust_first_name]
  }
}
