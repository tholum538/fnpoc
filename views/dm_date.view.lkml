view: dm_date {
  sql_table_name: EDW.DM_DATE ;;

  dimension: cal_half {
    type: number
    sql: ${TABLE}.CAL_HALF ;;
  }

  dimension: cal_month {
    type: number
    sql: ${TABLE}.CAL_MONTH ;;
  }

  dimension: cal_month_key {
    type: number
    sql: ${TABLE}.CAL_MONTH_KEY ;;
  }

  dimension: cal_qtr {
    type: number
    sql: ${TABLE}.CAL_QTR ;;
  }

  dimension: cal_qtr_end_dt_key {
    type: number
    sql: ${TABLE}.CAL_QTR_END_DT_KEY ;;
  }

  dimension: cal_qtr_key {
    type: number
    sql: ${TABLE}.CAL_QTR_KEY ;;
  }

  dimension: cal_qtr_start_dt_key {
    type: number
    sql: ${TABLE}.CAL_QTR_START_DT_KEY ;;
  }

  dimension: cal_trimester {
    type: number
    sql: ${TABLE}.CAL_TRIMESTER ;;
  }

  dimension: cal_week {
    type: number
    sql: ${TABLE}.CAL_WEEK ;;
  }

  dimension: cal_week_end_dt_key {
    type: number
    sql: ${TABLE}.CAL_WEEK_END_DT_KEY ;;
  }

  dimension: cal_week_start_dt_key {
    type: number
    sql: ${TABLE}.CAL_WEEK_START_DT_KEY ;;
  }

  dimension: cal_year {
    type: number
    sql: ${TABLE}.CAL_YEAR ;;
  }

  dimension_group: cal_year_end_dt {
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
    sql: ${TABLE}.CAL_YEAR_END_DT ;;
  }

  dimension: cal_year_end_dt_key {
    type: number
    sql: ${TABLE}.CAL_YEAR_END_DT_KEY ;;
  }

  dimension: cal_year_key {
    type: number
    sql: ${TABLE}.CAL_YEAR_KEY ;;
  }

  dimension_group: cal_year_start_dt {
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
    sql: ${TABLE}.CAL_YEAR_START_DT ;;
  }

  dimension: cal_year_start_dt_key {
    type: number
    sql: ${TABLE}.CAL_YEAR_START_DT_KEY ;;
  }

  dimension: date_id {
    type: number
    sql: ${TABLE}.DATE_ID ;;
  }

  dimension_group: day_dt {
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
    sql: ${TABLE}.DAY_DT ;;
  }

  dimension: day_of_month {
    type: number
    sql: ${TABLE}.DAY_OF_MONTH ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}.DAY_OF_YEAR ;;
  }

  dimension_group: day_ts {
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
    sql: ${TABLE}.DAY_TS ;;
  }

  dimension: fst_day_cal_mnth_flg {
    type: string
    sql: ${TABLE}.FST_DAY_CAL_MNTH_FLG ;;
  }

  dimension: fst_day_cal_qtr_flg {
    type: string
    sql: ${TABLE}.FST_DAY_CAL_QTR_FLG ;;
  }

  dimension: fst_day_cal_wk_flg {
    type: string
    sql: ${TABLE}.FST_DAY_CAL_WK_FLG ;;
  }

  dimension: fst_day_cal_year_flg {
    type: string
    sql: ${TABLE}.FST_DAY_CAL_YEAR_FLG ;;
  }

  dimension: julian_day_num {
    type: number
    sql: ${TABLE}.JULIAN_DAY_NUM ;;
  }

  dimension: julian_month_num {
    type: number
    sql: ${TABLE}.JULIAN_MONTH_NUM ;;
  }

  dimension: julian_qtr_num {
    type: number
    sql: ${TABLE}.JULIAN_QTR_NUM ;;
  }

  dimension: julian_ter_num {
    type: number
    sql: ${TABLE}.JULIAN_TER_NUM ;;
  }

  dimension: julian_week_num {
    type: number
    sql: ${TABLE}.JULIAN_WEEK_NUM ;;
  }

  dimension: julian_year_num {
    type: number
    sql: ${TABLE}.JULIAN_YEAR_NUM ;;
  }

  dimension: last_day_cal_mnth_flg {
    type: string
    sql: ${TABLE}.LAST_DAY_CAL_MNTH_FLG ;;
  }

  dimension: last_day_cal_qtr_flg {
    type: string
    sql: ${TABLE}.LAST_DAY_CAL_QTR_FLG ;;
  }

  dimension: last_day_cal_wk_flg {
    type: string
    sql: ${TABLE}.LAST_DAY_CAL_WK_FLG ;;
  }

  dimension: last_day_cal_year_flg {
    type: string
    sql: ${TABLE}.LAST_DAY_CAL_YEAR_FLG ;;
  }

  dimension: m_end_cal_dt_key {
    type: number
    sql: ${TABLE}.M_END_CAL_DT_KEY ;;
  }

  dimension: m_strt_cal_dt_key {
    type: number
    sql: ${TABLE}.M_STRT_CAL_DT_KEY ;;
  }

  dimension: per_name_half {
    type: string
    sql: ${TABLE}.PER_NAME_HALF ;;
  }

  dimension: per_name_month {
    type: string
    sql: ${TABLE}.PER_NAME_MONTH ;;
  }

  dimension: per_name_offset_wk {
    type: string
    sql: ${TABLE}.PER_NAME_OFFSET_WK ;;
  }

  dimension: per_name_qtr {
    type: string
    sql: ${TABLE}.PER_NAME_QTR ;;
  }

  dimension: per_name_ter {
    type: string
    sql: ${TABLE}.PER_NAME_TER ;;
  }

  dimension: per_name_week {
    type: string
    sql: ${TABLE}.PER_NAME_WEEK ;;
  }

  dimension: per_name_year {
    type: string
    sql: ${TABLE}.PER_NAME_YEAR ;;
  }

  dimension: w_day_code {
    type: string
    sql: ${TABLE}.W_DAY_CODE ;;
  }

  dimension: w_month_code {
    type: string
    sql: ${TABLE}.W_MONTH_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
