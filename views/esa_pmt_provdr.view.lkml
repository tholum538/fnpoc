view: esa_pmt_provdr {
  sql_table_name: EDW.ESA_PMT_PROVDR ;;

  dimension: cdc_tag_id {
    type: number
    sql: ${TABLE}.CDC_TAG_ID ;;
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

  dimension_group: etl_prttn {
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
    sql: ${TABLE}.ETL_PRTTN_DATE ;;
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

  dimension: inact_flg {
    type: string
    sql: ${TABLE}.INACT_FLG ;;
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

  dimension: pmt_provdr_desc {
    type: string
    sql: ${TABLE}.PMT_PROVDR_DESC ;;
  }

  dimension: pmt_provdr_id {
    type: number
    sql: ${TABLE}.PMT_PROVDR_ID ;;
  }

  dimension: pmt_provdr_name {
    type: string
    sql: ${TABLE}.PMT_PROVDR_NAME ;;
  }

  dimension: pmt_provdr_type_id {
    type: number
    sql: ${TABLE}.PMT_PROVDR_TYPE_ID ;;
  }

  dimension: usage_ind {
    type: string
    sql: ${TABLE}.USAGE_IND ;;
  }

  measure: count {
    type: count
    drill_fields: [pmt_provdr_name]
  }
}
