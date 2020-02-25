view: dim_sys_date_schema {
  sql_table_name: EDW.DIM_SYS_DATE_SCHEMA ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: day_of_business_week {
    type: number
    sql: ${TABLE}.DAY_OF_BUSINESS_WEEK ;;
  }

  dimension: day_of_month {
    type: number
    sql: ${TABLE}.DAY_OF_MONTH ;;
  }

  dimension: day_of_quarter {
    type: number
    sql: ${TABLE}.DAY_OF_QUARTER ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: day_of_week_abbr_nm {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK_ABBR_NM ;;
  }

  dimension: day_of_week_full_nm {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK_FULL_NM ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}.DAY_OF_YEAR ;;
  }

  dimension: days_left_in_business_week {
    type: number
    sql: ${TABLE}.DAYS_LEFT_IN_BUSINESS_WEEK ;;
  }

  dimension: days_left_in_month {
    type: number
    sql: ${TABLE}.DAYS_LEFT_IN_MONTH ;;
  }

  dimension: days_left_in_quarter {
    type: number
    sql: ${TABLE}.DAYS_LEFT_IN_QUARTER ;;
  }

  dimension: days_left_in_week {
    type: number
    sql: ${TABLE}.DAYS_LEFT_IN_WEEK ;;
  }

  dimension: days_left_in_year {
    type: number
    sql: ${TABLE}.DAYS_LEFT_IN_YEAR ;;
  }

  dimension: friday_of_month {
    type: number
    sql: ${TABLE}.FRIDAY_OF_MONTH ;;
  }

  dimension: fridays_in_month {
    type: number
    sql: ${TABLE}.FRIDAYS_IN_MONTH ;;
  }

  dimension: is_first_day_of_business_week {
    type: number
    sql: ${TABLE}.IS_FIRST_DAY_OF_BUSINESS_WEEK ;;
  }

  dimension: is_first_day_of_month {
    type: number
    sql: ${TABLE}.IS_FIRST_DAY_OF_MONTH ;;
  }

  dimension: is_first_day_of_quarter {
    type: number
    sql: ${TABLE}.IS_FIRST_DAY_OF_QUARTER ;;
  }

  dimension: is_first_day_of_week {
    type: number
    sql: ${TABLE}.IS_FIRST_DAY_OF_WEEK ;;
  }

  dimension: is_first_day_of_year {
    type: number
    sql: ${TABLE}.IS_FIRST_DAY_OF_YEAR ;;
  }

  dimension: is_future {
    type: number
    sql: ${TABLE}.IS_FUTURE ;;
  }

  dimension: is_last_day_of_business_week {
    type: number
    sql: ${TABLE}.IS_LAST_DAY_OF_BUSINESS_WEEK ;;
  }

  dimension: is_last_day_of_month {
    type: number
    sql: ${TABLE}.IS_LAST_DAY_OF_MONTH ;;
  }

  dimension: is_last_day_of_quarter {
    type: number
    sql: ${TABLE}.IS_LAST_DAY_OF_QUARTER ;;
  }

  dimension: is_last_day_of_week {
    type: number
    sql: ${TABLE}.IS_LAST_DAY_OF_WEEK ;;
  }

  dimension: is_last_day_of_year {
    type: number
    sql: ${TABLE}.IS_LAST_DAY_OF_YEAR ;;
  }

  dimension: is_leap_day {
    type: number
    sql: ${TABLE}.IS_LEAP_DAY ;;
  }

  dimension: is_leap_year {
    type: number
    sql: ${TABLE}.IS_LEAP_YEAR ;;
  }

  dimension: is_past {
    type: number
    sql: ${TABLE}.IS_PAST ;;
  }

  dimension: is_today {
    type: number
    sql: ${TABLE}.IS_TODAY ;;
  }

  dimension: is_weekday {
    type: number
    sql: ${TABLE}.IS_WEEKDAY ;;
  }

  dimension: is_weekend {
    type: number
    sql: ${TABLE}.IS_WEEKEND ;;
  }

  dimension: julian_day {
    type: number
    sql: ${TABLE}.JULIAN_DAY ;;
  }

  dimension: monday_of_month {
    type: number
    sql: ${TABLE}.MONDAY_OF_MONTH ;;
  }

  dimension: mondays_in_month {
    type: number
    sql: ${TABLE}.MONDAYS_IN_MONTH ;;
  }

  dimension: month_abbr_nm {
    type: string
    sql: ${TABLE}.MONTH_ABBR_NM ;;
  }

  dimension: month_full_nm {
    type: string
    sql: ${TABLE}.MONTH_FULL_NM ;;
  }

  dimension: month_of_quarter {
    type: number
    sql: ${TABLE}.MONTH_OF_QUARTER ;;
  }

  dimension: month_of_year {
    type: number
    sql: ${TABLE}.MONTH_OF_YEAR ;;
  }

  dimension: months_left_in_quarter {
    type: number
    sql: ${TABLE}.MONTHS_LEFT_IN_QUARTER ;;
  }

  dimension: months_left_in_year {
    type: number
    sql: ${TABLE}.MONTHS_LEFT_IN_YEAR ;;
  }

  dimension: quarter_of_year {
    type: number
    sql: ${TABLE}.QUARTER_OF_YEAR ;;
  }

  dimension: quarters_left_in_year {
    type: number
    sql: ${TABLE}.QUARTERS_LEFT_IN_YEAR ;;
  }

  dimension: saturday_of_month {
    type: number
    sql: ${TABLE}.SATURDAY_OF_MONTH ;;
  }

  dimension: saturdays_in_month {
    type: number
    sql: ${TABLE}.SATURDAYS_IN_MONTH ;;
  }

  dimension: sunday_of_month {
    type: number
    sql: ${TABLE}.SUNDAY_OF_MONTH ;;
  }

  dimension: sundays_in_month {
    type: number
    sql: ${TABLE}.SUNDAYS_IN_MONTH ;;
  }

  dimension_group: sys {
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
    sql: ${TABLE}.SYS_DATE ;;
  }

  dimension: thursday_of_month {
    type: number
    sql: ${TABLE}.THURSDAY_OF_MONTH ;;
  }

  dimension: thursdays_in_month {
    type: number
    sql: ${TABLE}.THURSDAYS_IN_MONTH ;;
  }

  dimension: tuesday_of_month {
    type: number
    sql: ${TABLE}.TUESDAY_OF_MONTH ;;
  }

  dimension: tuesdays_in_month {
    type: number
    sql: ${TABLE}.TUESDAYS_IN_MONTH ;;
  }

  dimension: wednesday_of_month {
    type: number
    sql: ${TABLE}.WEDNESDAY_OF_MONTH ;;
  }

  dimension: wednesdays_in_month {
    type: number
    sql: ${TABLE}.WEDNESDAYS_IN_MONTH ;;
  }

  dimension: week_of_month {
    type: number
    sql: ${TABLE}.WEEK_OF_MONTH ;;
  }

  dimension: week_of_quarter {
    type: number
    sql: ${TABLE}.WEEK_OF_QUARTER ;;
  }

  dimension: week_of_year {
    type: number
    sql: ${TABLE}.WEEK_OF_YEAR ;;
  }

  dimension: weeks_left_in_month {
    type: number
    sql: ${TABLE}.WEEKS_LEFT_IN_MONTH ;;
  }

  dimension: weeks_left_in_quarter {
    type: number
    sql: ${TABLE}.WEEKS_LEFT_IN_QUARTER ;;
  }

  dimension: weeks_left_in_year {
    type: number
    sql: ${TABLE}.WEEKS_LEFT_IN_YEAR ;;
  }

  dimension: year_2_digit {
    type: number
    sql: ${TABLE}.YEAR_2DIGIT ;;
  }

  dimension: year_4_digit {
    type: number
    sql: ${TABLE}.YEAR_4DIGIT ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
