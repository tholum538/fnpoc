view: esa_cr_card_type {
  sql_table_name: EDW.ESA_CR_CARD_TYPE ;;

  dimension: cdc_tag_id {
    type: number
    sql: ${TABLE}.CDC_TAG_ID ;;
  }

  dimension: cr_card_type_desc {
    type: string
    sql: ${TABLE}.CR_CARD_TYPE_DESC ;;
  }

  dimension: cr_card_type_id {
    type: number
    sql: ${TABLE}.CR_CARD_TYPE_ID ;;
  }

  dimension: cr_card_type_name {
    type: string
    sql: ${TABLE}.CR_CARD_TYPE_NAME ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CREATED_BY ;;
  }

  dimension_group: created_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED_TIMESTAMP ;;
  }

  dimension: dates_reqd_ind {
    type: string
    sql: ${TABLE}.DATES_REQD_IND ;;
  }

  dimension_group: etl_load_dts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ETL_LOAD_DTS ;;
  }

  dimension_group: etl_prttn_dt {
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
    sql: ${TABLE}.ETL_PRTTN_DT ;;
  }

  dimension: etl_row_id {
    type: number
    sql: ${TABLE}.ETL_ROW_ID ;;
  }

  dimension: etl_sess_id {
    type: number
    sql: ${TABLE}.ETL_SESS_ID ;;
  }

  dimension_group: etl_src_mod_dts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ETL_SRC_MOD_DTS ;;
  }

  dimension: etl_src_sys {
    type: string
    sql: ${TABLE}.ETL_SRC_SYS ;;
  }

  dimension: inact_flg {
    type: string
    sql: ${TABLE}.INACT_FLG ;;
  }

  dimension: max_num_len {
    type: number
    sql: ${TABLE}.MAX_NUM_LEN ;;
  }

  dimension: max_verif_num_len {
    type: number
    sql: ${TABLE}.MAX_VERIF_NUM_LEN ;;
  }

  dimension: min_num_len {
    type: number
    sql: ${TABLE}.MIN_NUM_LEN ;;
  }

  dimension: min_verif_num_len {
    type: number
    sql: ${TABLE}.MIN_VERIF_NUM_LEN ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.MODIFIED_BY ;;
  }

  dimension_group: modified_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.MODIFIED_TIMESTAMP ;;
  }

  measure: count {
    type: count
    drill_fields: [cr_card_type_name]
  }
}
